import 'package:farming_manager/data/network/state/result.dart';
import 'package:farming_manager/data/repository/base_repository.dart';
import 'package:farming_manager/data/request/weather_request.dart';
import 'package:farming_manager/data/response/weather_response.dart';

abstract class FarmingRepository extends BaseRepository {
  Future<Result<WeatherResponse>> getWeatherInfo(WeatherRequest request);

}