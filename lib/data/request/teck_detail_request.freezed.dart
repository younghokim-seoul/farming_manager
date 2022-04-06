// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'teck_detail_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeckDetailRequest _$TeckDetailRequestFromJson(Map<String, dynamic> json) {
  return _TeckDetailRequest.fromJson(json);
}

/// @nodoc
class _$TeckDetailRequestTearOff {
  const _$TeckDetailRequestTearOff();

  _TeckDetailRequest call({required String cntntsNo}) {
    return _TeckDetailRequest(
      cntntsNo: cntntsNo,
    );
  }

  TeckDetailRequest fromJson(Map<String, Object?> json) {
    return TeckDetailRequest.fromJson(json);
  }
}

/// @nodoc
const $TeckDetailRequest = _$TeckDetailRequestTearOff();

/// @nodoc
mixin _$TeckDetailRequest {
  String get cntntsNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeckDetailRequestCopyWith<TeckDetailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeckDetailRequestCopyWith<$Res> {
  factory $TeckDetailRequestCopyWith(
          TeckDetailRequest value, $Res Function(TeckDetailRequest) then) =
      _$TeckDetailRequestCopyWithImpl<$Res>;
  $Res call({String cntntsNo});
}

/// @nodoc
class _$TeckDetailRequestCopyWithImpl<$Res>
    implements $TeckDetailRequestCopyWith<$Res> {
  _$TeckDetailRequestCopyWithImpl(this._value, this._then);

  final TeckDetailRequest _value;
  // ignore: unused_field
  final $Res Function(TeckDetailRequest) _then;

  @override
  $Res call({
    Object? cntntsNo = freezed,
  }) {
    return _then(_value.copyWith(
      cntntsNo: cntntsNo == freezed
          ? _value.cntntsNo
          : cntntsNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TeckDetailRequestCopyWith<$Res>
    implements $TeckDetailRequestCopyWith<$Res> {
  factory _$TeckDetailRequestCopyWith(
          _TeckDetailRequest value, $Res Function(_TeckDetailRequest) then) =
      __$TeckDetailRequestCopyWithImpl<$Res>;
  @override
  $Res call({String cntntsNo});
}

/// @nodoc
class __$TeckDetailRequestCopyWithImpl<$Res>
    extends _$TeckDetailRequestCopyWithImpl<$Res>
    implements _$TeckDetailRequestCopyWith<$Res> {
  __$TeckDetailRequestCopyWithImpl(
      _TeckDetailRequest _value, $Res Function(_TeckDetailRequest) _then)
      : super(_value, (v) => _then(v as _TeckDetailRequest));

  @override
  _TeckDetailRequest get _value => super._value as _TeckDetailRequest;

  @override
  $Res call({
    Object? cntntsNo = freezed,
  }) {
    return _then(_TeckDetailRequest(
      cntntsNo: cntntsNo == freezed
          ? _value.cntntsNo
          : cntntsNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TeckDetailRequest implements _TeckDetailRequest {
  const _$_TeckDetailRequest({required this.cntntsNo});

  factory _$_TeckDetailRequest.fromJson(Map<String, dynamic> json) =>
      _$$_TeckDetailRequestFromJson(json);

  @override
  final String cntntsNo;

  @override
  String toString() {
    return 'TeckDetailRequest(cntntsNo: $cntntsNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TeckDetailRequest &&
            const DeepCollectionEquality().equals(other.cntntsNo, cntntsNo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cntntsNo));

  @JsonKey(ignore: true)
  @override
  _$TeckDetailRequestCopyWith<_TeckDetailRequest> get copyWith =>
      __$TeckDetailRequestCopyWithImpl<_TeckDetailRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeckDetailRequestToJson(this);
  }
}

abstract class _TeckDetailRequest implements TeckDetailRequest {
  const factory _TeckDetailRequest({required String cntntsNo}) =
      _$_TeckDetailRequest;

  factory _TeckDetailRequest.fromJson(Map<String, dynamic> json) =
      _$_TeckDetailRequest.fromJson;

  @override
  String get cntntsNo;
  @override
  @JsonKey(ignore: true)
  _$TeckDetailRequestCopyWith<_TeckDetailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
