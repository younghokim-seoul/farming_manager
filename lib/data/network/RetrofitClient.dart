

import 'package:dio/dio.dart';
import 'package:farming_manager/data/request/weather_request.dart';
import 'package:farming_manager/data/response/weather_response.dart';
import 'package:retrofit/retrofit.dart';


part 'RetrofitClient.g.dart';

@RestApi()
abstract class RetrofitClient {
  factory RetrofitClient(Dio dio, {String baseUrl}) = _RetrofitClient;

  @POST("/callApi/getWeatherInfo")
    Future<WeatherResponse> getWeatherInfo(@Body() WeatherRequest request);
}
