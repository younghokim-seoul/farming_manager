// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherRequest _$WeatherRequestFromJson(Map<String, dynamic> json) {
  return _WeatherRequest.fromJson(json);
}

/// @nodoc
class _$WeatherRequestTearOff {
  const _$WeatherRequestTearOff();

  _WeatherRequest call({required int nx, required int ny}) {
    return _WeatherRequest(
      nx: nx,
      ny: ny,
    );
  }

  WeatherRequest fromJson(Map<String, Object?> json) {
    return WeatherRequest.fromJson(json);
  }
}

/// @nodoc
const $WeatherRequest = _$WeatherRequestTearOff();

/// @nodoc
mixin _$WeatherRequest {
  int get nx => throw _privateConstructorUsedError;
  int get ny => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherRequestCopyWith<WeatherRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherRequestCopyWith<$Res> {
  factory $WeatherRequestCopyWith(
          WeatherRequest value, $Res Function(WeatherRequest) then) =
      _$WeatherRequestCopyWithImpl<$Res>;
  $Res call({int nx, int ny});
}

/// @nodoc
class _$WeatherRequestCopyWithImpl<$Res>
    implements $WeatherRequestCopyWith<$Res> {
  _$WeatherRequestCopyWithImpl(this._value, this._then);

  final WeatherRequest _value;
  // ignore: unused_field
  final $Res Function(WeatherRequest) _then;

  @override
  $Res call({
    Object? nx = freezed,
    Object? ny = freezed,
  }) {
    return _then(_value.copyWith(
      nx: nx == freezed
          ? _value.nx
          : nx // ignore: cast_nullable_to_non_nullable
              as int,
      ny: ny == freezed
          ? _value.ny
          : ny // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$WeatherRequestCopyWith<$Res>
    implements $WeatherRequestCopyWith<$Res> {
  factory _$WeatherRequestCopyWith(
          _WeatherRequest value, $Res Function(_WeatherRequest) then) =
      __$WeatherRequestCopyWithImpl<$Res>;
  @override
  $Res call({int nx, int ny});
}

/// @nodoc
class __$WeatherRequestCopyWithImpl<$Res>
    extends _$WeatherRequestCopyWithImpl<$Res>
    implements _$WeatherRequestCopyWith<$Res> {
  __$WeatherRequestCopyWithImpl(
      _WeatherRequest _value, $Res Function(_WeatherRequest) _then)
      : super(_value, (v) => _then(v as _WeatherRequest));

  @override
  _WeatherRequest get _value => super._value as _WeatherRequest;

  @override
  $Res call({
    Object? nx = freezed,
    Object? ny = freezed,
  }) {
    return _then(_WeatherRequest(
      nx: nx == freezed
          ? _value.nx
          : nx // ignore: cast_nullable_to_non_nullable
              as int,
      ny: ny == freezed
          ? _value.ny
          : ny // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherRequest implements _WeatherRequest {
  const _$_WeatherRequest({required this.nx, required this.ny});

  factory _$_WeatherRequest.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherRequestFromJson(json);

  @override
  final int nx;
  @override
  final int ny;

  @override
  String toString() {
    return 'WeatherRequest(nx: $nx, ny: $ny)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherRequest &&
            const DeepCollectionEquality().equals(other.nx, nx) &&
            const DeepCollectionEquality().equals(other.ny, ny));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nx),
      const DeepCollectionEquality().hash(ny));

  @JsonKey(ignore: true)
  @override
  _$WeatherRequestCopyWith<_WeatherRequest> get copyWith =>
      __$WeatherRequestCopyWithImpl<_WeatherRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherRequestToJson(this);
  }
}

abstract class _WeatherRequest implements WeatherRequest {
  const factory _WeatherRequest({required int nx, required int ny}) =
      _$_WeatherRequest;

  factory _WeatherRequest.fromJson(Map<String, dynamic> json) =
      _$_WeatherRequest.fromJson;

  @override
  int get nx;
  @override
  int get ny;
  @override
  @JsonKey(ignore: true)
  _$WeatherRequestCopyWith<_WeatherRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
