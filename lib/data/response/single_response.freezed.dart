// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'single_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SingleResponse _$SingleResponseFromJson(Map<String, dynamic> json) {
  return _SingleResponse.fromJson(json);
}

/// @nodoc
class _$SingleResponseTearOff {
  const _$SingleResponseTearOff();

  _SingleResponse call({required String result}) {
    return _SingleResponse(
      result: result,
    );
  }

  SingleResponse fromJson(Map<String, Object?> json) {
    return SingleResponse.fromJson(json);
  }
}

/// @nodoc
const $SingleResponse = _$SingleResponseTearOff();

/// @nodoc
mixin _$SingleResponse {
  String get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleResponseCopyWith<SingleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleResponseCopyWith<$Res> {
  factory $SingleResponseCopyWith(
          SingleResponse value, $Res Function(SingleResponse) then) =
      _$SingleResponseCopyWithImpl<$Res>;
  $Res call({String result});
}

/// @nodoc
class _$SingleResponseCopyWithImpl<$Res>
    implements $SingleResponseCopyWith<$Res> {
  _$SingleResponseCopyWithImpl(this._value, this._then);

  final SingleResponse _value;
  // ignore: unused_field
  final $Res Function(SingleResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SingleResponseCopyWith<$Res>
    implements $SingleResponseCopyWith<$Res> {
  factory _$SingleResponseCopyWith(
          _SingleResponse value, $Res Function(_SingleResponse) then) =
      __$SingleResponseCopyWithImpl<$Res>;
  @override
  $Res call({String result});
}

/// @nodoc
class __$SingleResponseCopyWithImpl<$Res>
    extends _$SingleResponseCopyWithImpl<$Res>
    implements _$SingleResponseCopyWith<$Res> {
  __$SingleResponseCopyWithImpl(
      _SingleResponse _value, $Res Function(_SingleResponse) _then)
      : super(_value, (v) => _then(v as _SingleResponse));

  @override
  _SingleResponse get _value => super._value as _SingleResponse;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_SingleResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SingleResponse implements _SingleResponse {
  const _$_SingleResponse({required this.result});

  factory _$_SingleResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SingleResponseFromJson(json);

  @override
  final String result;

  @override
  String toString() {
    return 'SingleResponse(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SingleResponse &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$SingleResponseCopyWith<_SingleResponse> get copyWith =>
      __$SingleResponseCopyWithImpl<_SingleResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SingleResponseToJson(this);
  }
}

abstract class _SingleResponse implements SingleResponse {
  const factory _SingleResponse({required String result}) = _$_SingleResponse;

  factory _SingleResponse.fromJson(Map<String, dynamic> json) =
      _$_SingleResponse.fromJson;

  @override
  String get result;
  @override
  @JsonKey(ignore: true)
  _$SingleResponseCopyWith<_SingleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
