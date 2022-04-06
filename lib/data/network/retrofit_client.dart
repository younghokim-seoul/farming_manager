import 'package:dio/dio.dart';
import 'package:farming_manager/data/request/dstr_prevnt_list_request.dart';
import 'package:farming_manager/data/request/kind_detail_request.dart';
import 'package:farming_manager/data/request/teck_detail_request.dart';
import 'package:farming_manager/data/request/teck_list_request.dart';
import 'package:farming_manager/data/request/vedio_list_request.dart';
import 'package:farming_manager/data/request/weather_request.dart';
import 'package:farming_manager/data/response/dstr_prevnt_list_response.dart';
import 'package:farming_manager/data/response/king_category_response.dart';
import 'package:farming_manager/data/response/king_detail_response.dart';
import 'package:farming_manager/data/response/teck_detail_response.dart';
import 'package:farming_manager/data/response/teck_response.dart';
import 'package:farming_manager/data/response/vedio_category_response.dart';
import 'package:farming_manager/data/response/vedio_list_response.dart';
import 'package:farming_manager/data/response/weather_response.dart';
import 'package:farming_manager/data/response/weekly_farm_response.dart';
import 'package:retrofit/retrofit.dart';

import '../request/menual_list_request.dart';
import '../response/menual_category_response.dart';
import '../response/menual_list_response.dart';

part 'retrofit_client.g.dart';

@RestApi()
abstract class RetrofitClient {
  factory RetrofitClient(Dio dio, {String baseUrl}) = _RetrofitClient;

  @POST("/callApi/getWeatherInfo")
  Future<WeatherResponse> getWeatherInfo(@Body() WeatherRequest request);

  @POST("/callApi/getItemCategory")
  Future<List<KindCategoryResponse>> getKindCategory();

  @POST("/callApi/getItemList")
  Future<List<KindDetailResponse>> getKindDetail(
      @Body() KindDetailRequest request);

  @POST("/callApi/getMenualCategory")
  Future<List<MenualCategoryResponse>> getMenualCategory();

  @POST("/callApi/getMenualList")
  Future<List<MenualListResponse>> getMenualList(@Body() MenualListRequest request);

  @POST("/callApi/getWeekFarmList")
  Future<List<WeeklyFarmResponse>> getWeekFarmList();

  @POST("/callApi/getdstrPrevntList")
  Future<List<DstrPrevntListResponse>> getDstrPrevntList(@Body() DstrPrevntListRequest request);

  @POST("/callApi/getTeckList")
  Future<List<TeckResponse>> getTeckList(@Body() TeckListRequest request);

  @POST("/callApi/getTeckDetail")
  Future<List<TeckDetailResponse>> getTeckDetail(@Body() TeckDetailRequest request);

  @POST("/callApi/getVideoCategory")
  Future<List<VedioCategoryResponse>> getVideoCategory();

  @POST("/callApi/getVideoList")
  Future<List<VedioListResponse>> getVideoList(@Body() VedioListRequest request);


}
