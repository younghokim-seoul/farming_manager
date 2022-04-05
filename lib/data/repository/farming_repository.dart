import 'package:farming_manager/data/network/state/result.dart';
import 'package:farming_manager/data/repository/base_repository.dart';
import 'package:farming_manager/data/request/kind_detail_request.dart';
import 'package:farming_manager/data/request/weather_request.dart';
import 'package:farming_manager/data/response/king_category_response.dart';
import 'package:farming_manager/data/response/king_detail_response.dart';
import 'package:farming_manager/data/response/weather_response.dart';

abstract class FarmingRepository extends BaseRepository {
  Future<Result<WeatherResponse>> getWeatherInfo(WeatherRequest request);
  Future<Result<List<KindCategoryResponse>>> getKindCategory();
  Future<Result<List<KindDetailResponse>>> getKindDetail(KindDetailRequest request);
}