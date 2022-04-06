// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'teck_list_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeckListRequest _$TeckListRequestFromJson(Map<String, dynamic> json) {
  return _TeckListRequest.fromJson(json);
}

/// @nodoc
class _$TeckListRequestTearOff {
  const _$TeckListRequestTearOff();

  _TeckListRequest call({required int pageNo}) {
    return _TeckListRequest(
      pageNo: pageNo,
    );
  }

  TeckListRequest fromJson(Map<String, Object?> json) {
    return TeckListRequest.fromJson(json);
  }
}

/// @nodoc
const $TeckListRequest = _$TeckListRequestTearOff();

/// @nodoc
mixin _$TeckListRequest {
  int get pageNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeckListRequestCopyWith<TeckListRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeckListRequestCopyWith<$Res> {
  factory $TeckListRequestCopyWith(
          TeckListRequest value, $Res Function(TeckListRequest) then) =
      _$TeckListRequestCopyWithImpl<$Res>;
  $Res call({int pageNo});
}

/// @nodoc
class _$TeckListRequestCopyWithImpl<$Res>
    implements $TeckListRequestCopyWith<$Res> {
  _$TeckListRequestCopyWithImpl(this._value, this._then);

  final TeckListRequest _value;
  // ignore: unused_field
  final $Res Function(TeckListRequest) _then;

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
abstract class _$TeckListRequestCopyWith<$Res>
    implements $TeckListRequestCopyWith<$Res> {
  factory _$TeckListRequestCopyWith(
          _TeckListRequest value, $Res Function(_TeckListRequest) then) =
      __$TeckListRequestCopyWithImpl<$Res>;
  @override
  $Res call({int pageNo});
}

/// @nodoc
class __$TeckListRequestCopyWithImpl<$Res>
    extends _$TeckListRequestCopyWithImpl<$Res>
    implements _$TeckListRequestCopyWith<$Res> {
  __$TeckListRequestCopyWithImpl(
      _TeckListRequest _value, $Res Function(_TeckListRequest) _then)
      : super(_value, (v) => _then(v as _TeckListRequest));

  @override
  _TeckListRequest get _value => super._value as _TeckListRequest;

  @override
  $Res call({
    Object? pageNo = freezed,
  }) {
    return _then(_TeckListRequest(
      pageNo: pageNo == freezed
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TeckListRequest implements _TeckListRequest {
  const _$_TeckListRequest({required this.pageNo});

  factory _$_TeckListRequest.fromJson(Map<String, dynamic> json) =>
      _$$_TeckListRequestFromJson(json);

  @override
  final int pageNo;

  @override
  String toString() {
    return 'TeckListRequest(pageNo: $pageNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TeckListRequest &&
            const DeepCollectionEquality().equals(other.pageNo, pageNo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pageNo));

  @JsonKey(ignore: true)
  @override
  _$TeckListRequestCopyWith<_TeckListRequest> get copyWith =>
      __$TeckListRequestCopyWithImpl<_TeckListRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeckListRequestToJson(this);
  }
}

abstract class _TeckListRequest implements TeckListRequest {
  const factory _TeckListRequest({required int pageNo}) = _$_TeckListRequest;

  factory _TeckListRequest.fromJson(Map<String, dynamic> json) =
      _$_TeckListRequest.fromJson;

  @override
  int get pageNo;
  @override
  @JsonKey(ignore: true)
  _$TeckListRequestCopyWith<_TeckListRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
