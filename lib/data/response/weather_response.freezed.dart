// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) {
  return _WeatherResponse.fromJson(json);
}

/// @nodoc
class _$WeatherResponseTearOff {
  const _$WeatherResponseTearOff();

  _WeatherResponse call(
      {@JsonKey(name: 'PTYCD') required String weatherCode,
      @JsonKey(name: 'PTY') required String weatherRainType,
      @JsonKey(name: 'REH') required String weatherHumidity,
      @JsonKey(name: 'TMP') required String weatherTemp,
      @JsonKey(name: 'POP') required String weatherRainPercent,
      @JsonKey(name: 'WSD') required String weatherWindSpeed}) {
    return _WeatherResponse(
      weatherCode: weatherCode,
      weatherRainType: weatherRainType,
      weatherHumidity: weatherHumidity,
      weatherTemp: weatherTemp,
      weatherRainPercent: weatherRainPercent,
      weatherWindSpeed: weatherWindSpeed,
    );
  }

  WeatherResponse fromJson(Map<String, Object?> json) {
    return WeatherResponse.fromJson(json);
  }
}

/// @nodoc
const $WeatherResponse = _$WeatherResponseTearOff();

/// @nodoc
mixin _$WeatherResponse {
  @JsonKey(name: 'PTYCD')
  String get weatherCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'PTY')
  String get weatherRainType => throw _privateConstructorUsedError;
  @JsonKey(name: 'REH')
  String get weatherHumidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'TMP')
  String get weatherTemp => throw _privateConstructorUsedError;
  @JsonKey(name: 'POP')
  String get weatherRainPercent => throw _privateConstructorUsedError;
  @JsonKey(name: 'WSD')
  String get weatherWindSpeed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherResponseCopyWith<WeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherResponseCopyWith<$Res> {
  factory $WeatherResponseCopyWith(
          WeatherResponse value, $Res Function(WeatherResponse) then) =
      _$WeatherResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'PTYCD') String weatherCode,
      @JsonKey(name: 'PTY') String weatherRainType,
      @JsonKey(name: 'REH') String weatherHumidity,
      @JsonKey(name: 'TMP') String weatherTemp,
      @JsonKey(name: 'POP') String weatherRainPercent,
      @JsonKey(name: 'WSD') String weatherWindSpeed});
}

/// @nodoc
class _$WeatherResponseCopyWithImpl<$Res>
    implements $WeatherResponseCopyWith<$Res> {
  _$WeatherResponseCopyWithImpl(this._value, this._then);

  final WeatherResponse _value;
  // ignore: unused_field
  final $Res Function(WeatherResponse) _then;

  @override
  $Res call({
    Object? weatherCode = freezed,
    Object? weatherRainType = freezed,
    Object? weatherHumidity = freezed,
    Object? weatherTemp = freezed,
    Object? weatherRainPercent = freezed,
    Object? weatherWindSpeed = freezed,
  }) {
    return _then(_value.copyWith(
      weatherCode: weatherCode == freezed
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as String,
      weatherRainType: weatherRainType == freezed
          ? _value.weatherRainType
          : weatherRainType // ignore: cast_nullable_to_non_nullable
              as String,
      weatherHumidity: weatherHumidity == freezed
          ? _value.weatherHumidity
          : weatherHumidity // ignore: cast_nullable_to_non_nullable
              as String,
      weatherTemp: weatherTemp == freezed
          ? _value.weatherTemp
          : weatherTemp // ignore: cast_nullable_to_non_nullable
              as String,
      weatherRainPercent: weatherRainPercent == freezed
          ? _value.weatherRainPercent
          : weatherRainPercent // ignore: cast_nullable_to_non_nullable
              as String,
      weatherWindSpeed: weatherWindSpeed == freezed
          ? _value.weatherWindSpeed
          : weatherWindSpeed // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WeatherResponseCopyWith<$Res>
    implements $WeatherResponseCopyWith<$Res> {
  factory _$WeatherResponseCopyWith(
          _WeatherResponse value, $Res Function(_WeatherResponse) then) =
      __$WeatherResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'PTYCD') String weatherCode,
      @JsonKey(name: 'PTY') String weatherRainType,
      @JsonKey(name: 'REH') String weatherHumidity,
      @JsonKey(name: 'TMP') String weatherTemp,
      @JsonKey(name: 'POP') String weatherRainPercent,
      @JsonKey(name: 'WSD') String weatherWindSpeed});
}

/// @nodoc
class __$WeatherResponseCopyWithImpl<$Res>
    extends _$WeatherResponseCopyWithImpl<$Res>
    implements _$WeatherResponseCopyWith<$Res> {
  __$WeatherResponseCopyWithImpl(
      _WeatherResponse _value, $Res Function(_WeatherResponse) _then)
      : super(_value, (v) => _then(v as _WeatherResponse));

  @override
  _WeatherResponse get _value => super._value as _WeatherResponse;

  @override
  $Res call({
    Object? weatherCode = freezed,
    Object? weatherRainType = freezed,
    Object? weatherHumidity = freezed,
    Object? weatherTemp = freezed,
    Object? weatherRainPercent = freezed,
    Object? weatherWindSpeed = freezed,
  }) {
    return _then(_WeatherResponse(
      weatherCode: weatherCode == freezed
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as String,
      weatherRainType: weatherRainType == freezed
          ? _value.weatherRainType
          : weatherRainType // ignore: cast_nullable_to_non_nullable
              as String,
      weatherHumidity: weatherHumidity == freezed
          ? _value.weatherHumidity
          : weatherHumidity // ignore: cast_nullable_to_non_nullable
              as String,
      weatherTemp: weatherTemp == freezed
          ? _value.weatherTemp
          : weatherTemp // ignore: cast_nullable_to_non_nullable
              as String,
      weatherRainPercent: weatherRainPercent == freezed
          ? _value.weatherRainPercent
          : weatherRainPercent // ignore: cast_nullable_to_non_nullable
              as String,
      weatherWindSpeed: weatherWindSpeed == freezed
          ? _value.weatherWindSpeed
          : weatherWindSpeed // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherResponse implements _WeatherResponse {
  const _$_WeatherResponse(
      {@JsonKey(name: 'PTYCD') required this.weatherCode,
      @JsonKey(name: 'PTY') required this.weatherRainType,
      @JsonKey(name: 'REH') required this.weatherHumidity,
      @JsonKey(name: 'TMP') required this.weatherTemp,
      @JsonKey(name: 'POP') required this.weatherRainPercent,
      @JsonKey(name: 'WSD') required this.weatherWindSpeed});

  factory _$_WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherResponseFromJson(json);

  @override
  @JsonKey(name: 'PTYCD')
  final String weatherCode;
  @override
  @JsonKey(name: 'PTY')
  final String weatherRainType;
  @override
  @JsonKey(name: 'REH')
  final String weatherHumidity;
  @override
  @JsonKey(name: 'TMP')
  final String weatherTemp;
  @override
  @JsonKey(name: 'POP')
  final String weatherRainPercent;
  @override
  @JsonKey(name: 'WSD')
  final String weatherWindSpeed;

  @override
  String toString() {
    return 'WeatherResponse(weatherCode: $weatherCode, weatherRainType: $weatherRainType, weatherHumidity: $weatherHumidity, weatherTemp: $weatherTemp, weatherRainPercent: $weatherRainPercent, weatherWindSpeed: $weatherWindSpeed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherResponse &&
            const DeepCollectionEquality()
                .equals(other.weatherCode, weatherCode) &&
            const DeepCollectionEquality()
                .equals(other.weatherRainType, weatherRainType) &&
            const DeepCollectionEquality()
                .equals(other.weatherHumidity, weatherHumidity) &&
            const DeepCollectionEquality()
                .equals(other.weatherTemp, weatherTemp) &&
            const DeepCollectionEquality()
                .equals(other.weatherRainPercent, weatherRainPercent) &&
            const DeepCollectionEquality()
                .equals(other.weatherWindSpeed, weatherWindSpeed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(weatherCode),
      const DeepCollectionEquality().hash(weatherRainType),
      const DeepCollectionEquality().hash(weatherHumidity),
      const DeepCollectionEquality().hash(weatherTemp),
      const DeepCollectionEquality().hash(weatherRainPercent),
      const DeepCollectionEquality().hash(weatherWindSpeed));

  @JsonKey(ignore: true)
  @override
  _$WeatherResponseCopyWith<_WeatherResponse> get copyWith =>
      __$WeatherResponseCopyWithImpl<_WeatherResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherResponseToJson(this);
  }
}

abstract class _WeatherResponse implements WeatherResponse {
  const factory _WeatherResponse(
          {@JsonKey(name: 'PTYCD') required String weatherCode,
          @JsonKey(name: 'PTY') required String weatherRainType,
          @JsonKey(name: 'REH') required String weatherHumidity,
          @JsonKey(name: 'TMP') required String weatherTemp,
          @JsonKey(name: 'POP') required String weatherRainPercent,
          @JsonKey(name: 'WSD') required String weatherWindSpeed}) =
      _$_WeatherResponse;

  factory _WeatherResponse.fromJson(Map<String, dynamic> json) =
      _$_WeatherResponse.fromJson;

  @override
  @JsonKey(name: 'PTYCD')
  String get weatherCode;
  @override
  @JsonKey(name: 'PTY')
  String get weatherRainType;
  @override
  @JsonKey(name: 'REH')
  String get weatherHumidity;
  @override
  @JsonKey(name: 'TMP')
  String get weatherTemp;
  @override
  @JsonKey(name: 'POP')
  String get weatherRainPercent;
  @override
  @JsonKey(name: 'WSD')
  String get weatherWindSpeed;
  @override
  @JsonKey(ignore: true)
  _$WeatherResponseCopyWith<_WeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
