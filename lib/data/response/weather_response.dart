

import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather_response.freezed.dart';
part 'weather_response.g.dart';

@freezed
class WeatherResponse with _$WeatherResponse{
  const factory WeatherResponse({
    @JsonKey(name: 'PTYCD')required String weatherCode,
    @JsonKey(name: 'PTY') required String weatherRainType,
    @JsonKey(name: 'REH') required String weatherHumidity,
    @JsonKey(name: 'TMP') required String weatherTemp,
    @JsonKey(name: 'POP') required String weatherRainPercent,
    @JsonKey(name: 'WSD') required String weatherWindSpeed,
  }) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, dynamic> json) => _$WeatherResponseFromJson(json);
}