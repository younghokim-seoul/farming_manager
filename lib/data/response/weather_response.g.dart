// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherResponse _$$_WeatherResponseFromJson(Map<String, dynamic> json) =>
    _$_WeatherResponse(
      weatherCode: json['PTYCD'] as String,
      weatherRainType: json['PTY'] as String,
      weatherHumidity: json['REH'] as String,
      weatherTemp: json['TMP'] as String,
      weatherRainPercent: json['POP'] as String,
      weatherWindSpeed: json['WSD'] as String,
    );

Map<String, dynamic> _$$_WeatherResponseToJson(_$_WeatherResponse instance) =>
    <String, dynamic>{
      'PTYCD': instance.weatherCode,
      'PTY': instance.weatherRainType,
      'REH': instance.weatherHumidity,
      'TMP': instance.weatherTemp,
      'POP': instance.weatherRainPercent,
      'WSD': instance.weatherWindSpeed,
    };
