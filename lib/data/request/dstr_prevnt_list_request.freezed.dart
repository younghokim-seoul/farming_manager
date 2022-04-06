// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dstr_prevnt_list_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DstrPrevntListRequest _$DstrPrevntListRequestFromJson(
    Map<String, dynamic> json) {
  return _DstrPrevntListRequest.fromJson(json);
}

/// @nodoc
class _$DstrPrevntListRequestTearOff {
  const _$DstrPrevntListRequestTearOff();

  _DstrPrevntListRequest call({required int pageNo}) {
    return _DstrPrevntListRequest(
      pageNo: pageNo,
    );
  }

  DstrPrevntListRequest fromJson(Map<String, Object?> json) {
    return DstrPrevntListRequest.fromJson(json);
  }
}

/// @nodoc
const $DstrPrevntListRequest = _$DstrPrevntListRequestTearOff();

/// @nodoc
mixin _$DstrPrevntListRequest {
  int get pageNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DstrPrevntListRequestCopyWith<DstrPrevntListRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DstrPrevntListRequestCopyWith<$Res> {
  factory $DstrPrevntListRequestCopyWith(DstrPrevntListRequest value,
          $Res Function(DstrPrevntListRequest) then) =
      _$DstrPrevntListRequestCopyWithImpl<$Res>;
  $Res call({int pageNo});
}

/// @nodoc
class _$DstrPrevntListRequestCopyWithImpl<$Res>
    implements $DstrPrevntListRequestCopyWith<$Res> {
  _$DstrPrevntListRequestCopyWithImpl(this._value, this._then);

  final DstrPrevntListRequest _value;
  // ignore: unused_field
  final $Res Function(DstrPrevntListRequest) _then;

  @override
  $Res call({
    Object? pageNo = freezed,
  }) {
    return _then(_value.copyWith(
      pageNo: pageNo == freezed
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DstrPrevntListRequestCopyWith<$Res>
    implements $DstrPrevntListRequestCopyWith<$Res> {
  factory _$DstrPrevntListRequestCopyWith(_DstrPrevntListRequest value,
          $Res Function(_DstrPrevntListRequest) then) =
      __$DstrPrevntListRequestCopyWithImpl<$Res>;
  @override
  $Res call({int pageNo});
}

/// @nodoc
class __$DstrPrevntListRequestCopyWithImpl<$Res>
    extends _$DstrPrevntListRequestCopyWithImpl<$Res>
    implements _$DstrPrevntListRequestCopyWith<$Res> {
  __$DstrPrevntListRequestCopyWithImpl(_DstrPrevntListRequest _value,
      $Res Function(_DstrPrevntListRequest) _then)
      : super(_value, (v) => _then(v as _DstrPrevntListRequest));

  @override
  _DstrPrevntListRequest get _value => super._value as _DstrPrevntListRequest;

  @override
  $Res call({
    Object? pageNo = freezed,
  }) {
    return _then(_DstrPrevntListRequest(
      pageNo: pageNo == freezed
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DstrPrevntListRequest implements _DstrPrevntListRequest {
  const _$_DstrPrevntListRequest({required this.pageNo});

  factory _$_DstrPrevntListRequest.fromJson(Map<String, dynamic> json) =>
      _$$_DstrPrevntListRequestFromJson(json);

  @override
  final int pageNo;

  @override
  String toString() {
    return 'DstrPrevntListRequest(pageNo: $pageNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DstrPrevntListRequest &&
            const DeepCollectionEquality().equals(other.pageNo, pageNo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pageNo));

  @JsonKey(ignore: true)
  @override
  _$DstrPrevntListRequestCopyWith<_DstrPrevntListRequest> get copyWith =>
      __$DstrPrevntListRequestCopyWithImpl<_DstrPrevntListRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DstrPrevntListRequestToJson(this);
  }
}

abstract class _DstrPrevntListRequest implements DstrPrevntListRequest {
  const factory _DstrPrevntListRequest({required int pageNo}) =
      _$_DstrPrevntListRequest;

  factory _DstrPrevntListRequest.fromJson(Map<String, dynamic> json) =
      _$_DstrPrevntListRequest.fromJson;

  @override
  int get pageNo;
  @override
  @JsonKey(ignore: true)
  _$DstrPrevntListRequestCopyWith<_DstrPrevntListRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
