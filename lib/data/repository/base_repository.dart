import 'dart:io';

import 'package:dio/dio.dart';
import 'package:farming_manager/constants/constants.dart';
import 'package:farming_manager/constants/strings.dart';
import 'package:farming_manager/data/network/state/result.dart';
import 'package:farming_manager/data/repository/custom_logger.dart';
import 'package:farming_manager/main.dart';



typedef EntityMapper<Entity, Model> = Model Function(Entity entity);

abstract class ErrorCode {
  static const error = "Error";
  static const failed = "Failed";
  static const message = "message";
  static const unauthorized = "unauthorized";
}

abstract class BaseRepository {
  final String endpoint = AppConstants.apiEndpoint;

  final Map<String, String> _headers = {
    HttpHeaders.acceptHeader: "application/json",
    HttpHeaders.contentTypeHeader: "application/json",
  };

  Dio get dio => Dio()
    ..options.headers = _headers
    ..interceptors.add(CustomLogInterceptor());

  Future<Result<ResponseType>> safeCall<RequestType, ResponseType>(
      Future<RequestType> call) async {
    try {
      var response = await call;
      logger.i(response);
      return Success(response as ResponseType);
    } catch (exception) {
      logger.e("Api error " + exception.toString());
      if (exception is DioError) {
        switch (exception.type) {
          case DioErrorType.connectTimeout:
          case DioErrorType.sendTimeout:
          case DioErrorType.receiveTimeout:
          case DioErrorType.cancel:
            logger.e("Api error message -> ${AppStrings.poorNetworkError}");
            return Error(AppStrings.poorNetworkError);
          case DioErrorType.other:
            logger.e("Api error message -> ${AppStrings.noNetworkError}");
            return Error(AppStrings.noNetworkError);
          case DioErrorType.response:
            return _getError(exception.response);
        }
      }
      return Error(AppStrings.genericError);
    }
  }

  Result<T> _getError<T>(Response? response) {
    if (response?.data != null && response?.data is Map<String, dynamic>) {
      if ((response!.data as Map<String, dynamic>)
          .containsKey(ErrorCode.message)) {
        logger.e("Api error response -> ${response.data.toString()}");
        final errorMessage = response.data[ErrorCode.message];
        return Error(errorMessage);
      }
    }
    return Error(
      AppStrings.genericError,
    );
  }
}
