// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weekly_farm_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeeklyFarmResponse _$WeeklyFarmResponseFromJson(Map<String, dynamic> json) {
  return _WeeklyFarmResponse.fromJson(json);
}

/// @nodoc
class _$WeeklyFarmResponseTearOff {
  const _$WeeklyFarmResponseTearOff();

  _WeeklyFarmResponse call(
      {required String fileName, required String downUrl}) {
    return _WeeklyFarmResponse(
      fileName: fileName,
      downUrl: downUrl,
    );
  }

  WeeklyFarmResponse fromJson(Map<String, Object?> json) {
    return WeeklyFarmResponse.fromJson(json);
  }
}

/// @nodoc
const $WeeklyFarmResponse = _$WeeklyFarmResponseTearOff();

/// @nodoc
mixin _$WeeklyFarmResponse {
  String get fileName => throw _privateConstructorUsedError;
  String get downUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeeklyFarmResponseCopyWith<WeeklyFarmResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyFarmResponseCopyWith<$Res> {
  factory $WeeklyFarmResponseCopyWith(
          WeeklyFarmResponse value, $Res Function(WeeklyFarmResponse) then) =
      _$WeeklyFarmResponseCopyWithImpl<$Res>;
  $Res call({String fileName, String downUrl});
}

/// @nodoc
class _$WeeklyFarmResponseCopyWithImpl<$Res>
    implements $WeeklyFarmResponseCopyWith<$Res> {
  _$WeeklyFarmResponseCopyWithImpl(this._value, this._then);

  final WeeklyFarmResponse _value;
  // ignore: unused_field
  final $Res Function(WeeklyFarmResponse) _then;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? downUrl = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      downUrl: downUrl == freezed
          ? _value.downUrl
          : downUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WeeklyFarmResponseCopyWith<$Res>
    implements $WeeklyFarmResponseCopyWith<$Res> {
  factory _$WeeklyFarmResponseCopyWith(
          _WeeklyFarmResponse value, $Res Function(_WeeklyFarmResponse) then) =
      __$WeeklyFarmResponseCopyWithImpl<$Res>;
  @override
  $Res call({String fileName, String downUrl});
}

/// @nodoc
class __$WeeklyFarmResponseCopyWithImpl<$Res>
    extends _$WeeklyFarmResponseCopyWithImpl<$Res>
    implements _$WeeklyFarmResponseCopyWith<$Res> {
  __$WeeklyFarmResponseCopyWithImpl(
      _WeeklyFarmResponse _value, $Res Function(_WeeklyFarmResponse) _then)
      : super(_value, (v) => _then(v as _WeeklyFarmResponse));

  @override
  _WeeklyFarmResponse get _value => super._value as _WeeklyFarmResponse;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? downUrl = freezed,
  }) {
    return _then(_WeeklyFarmResponse(
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      downUrl: downUrl == freezed
          ? _value.downUrl
          : downUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeeklyFarmResponse implements _WeeklyFarmResponse {
  const _$_WeeklyFarmResponse({required this.fileName, required this.downUrl});

  factory _$_WeeklyFarmResponse.fromJson(Map<String, dynamic> json) =>
      _$$_WeeklyFarmResponseFromJson(json);

  @override
  final String fileName;
  @override
  final String downUrl;

  @override
  String toString() {
    return 'WeeklyFarmResponse(fileName: $fileName, downUrl: $downUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeeklyFarmResponse &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality().equals(other.downUrl, downUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(downUrl));

  @JsonKey(ignore: true)
  @override
  _$WeeklyFarmResponseCopyWith<_WeeklyFarmResponse> get copyWith =>
      __$WeeklyFarmResponseCopyWithImpl<_WeeklyFarmResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeeklyFarmResponseToJson(this);
  }
}

abstract class _WeeklyFarmResponse implements WeeklyFarmResponse {
  const factory _WeeklyFarmResponse(
      {required String fileName,
      required String downUrl}) = _$_WeeklyFarmResponse;

  factory _WeeklyFarmResponse.fromJson(Map<String, dynamic> json) =
      _$_WeeklyFarmResponse.fromJson;

  @override
  String get fileName;
  @override
  String get downUrl;
  @override
  @JsonKey(ignore: true)
  _$WeeklyFarmResponseCopyWith<_WeeklyFarmResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
