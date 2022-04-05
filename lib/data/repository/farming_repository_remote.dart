import 'package:farming_manager/data/network/RetrofitClient.dart';
import 'package:farming_manager/data/network/state/result.dart';
import 'package:farming_manager/data/repository/farming_repository.dart';
import 'package:farming_manager/data/request/kind_detail_request.dart';
import 'package:farming_manager/data/request/weather_request.dart';
import 'package:farming_manager/data/response/king_category_response.dart';
import 'package:farming_manager/data/response/king_detail_response.dart';
import 'package:farming_manager/data/response/weather_response.dart';

class FarmingRepositoryImpl extends FarmingRepository {
  RetrofitClient get _retrofitClient => RetrofitClient(dio, baseUrl: endpoint);


  @override
  Future<Result<WeatherResponse>> getWeatherInfo(WeatherRequest request) async => safeCall(_retrofitClient.getWeatherInfo(request));

  @override
  Future<Result<List<KindCategoryResponse>>> getKindCategory() async => safeCall(_retrofitClient.getKindCategory());

  @override
  Future<Result<List<KindDetailResponse>>> getKindDetail(KindDetailRequest request)  async => safeCall(_retrofitClient.getKindDetail(request));
}
