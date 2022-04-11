// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'memo_delete_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemoDeleteRequest _$MemoDeleteRequestFromJson(Map<String, dynamic> json) {
  return _MemoDeleteRequest.fromJson(json);
}

/// @nodoc
class _$MemoDeleteRequestTearOff {
  const _$MemoDeleteRequestTearOff();

  _MemoDeleteRequest call({required int memoNo}) {
    return _MemoDeleteRequest(
      memoNo: memoNo,
    );
  }

  MemoDeleteRequest fromJson(Map<String, Object?> json) {
    return MemoDeleteRequest.fromJson(json);
  }
}

/// @nodoc
const $MemoDeleteRequest = _$MemoDeleteRequestTearOff();

/// @nodoc
mixin _$MemoDeleteRequest {
  int get memoNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemoDeleteRequestCopyWith<MemoDeleteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoDeleteRequestCopyWith<$Res> {
  factory $MemoDeleteRequestCopyWith(
          MemoDeleteRequest value, $Res Function(MemoDeleteRequest) then) =
      _$MemoDeleteRequestCopyWithImpl<$Res>;
  $Res call({int memoNo});
}

/// @nodoc
class _$MemoDeleteRequestCopyWithImpl<$Res>
    implements $MemoDeleteRequestCopyWith<$Res> {
  _$MemoDeleteRequestCopyWithImpl(this._value, this._then);

  final MemoDeleteRequest _value;
  // ignore: unused_field
  final $Res Function(MemoDeleteRequest) _then;

  @override
  $Res call({
    Object? memoNo = freezed,
  }) {
    return _then(_value.copyWith(
      memoNo: memoNo == freezed
          ? _value.memoNo
          : memoNo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$MemoDeleteRequestCopyWith<$Res>
    implements $MemoDeleteRequestCopyWith<$Res> {
  factory _$MemoDeleteRequestCopyWith(
          _MemoDeleteRequest value, $Res Function(_MemoDeleteRequest) then) =
      __$MemoDeleteRequestCopyWithImpl<$Res>;
  @override
  $Res call({int memoNo});
}

/// @nodoc
class __$MemoDeleteRequestCopyWithImpl<$Res>
    extends _$MemoDeleteRequestCopyWithImpl<$Res>
    implements _$MemoDeleteRequestCopyWith<$Res> {
  __$MemoDeleteRequestCopyWithImpl(
      _MemoDeleteRequest _value, $Res Function(_MemoDeleteRequest) _then)
      : super(_value, (v) => _then(v as _MemoDeleteRequest));

  @override
  _MemoDeleteRequest get _value => super._value as _MemoDeleteRequest;

  @override
  $Res call({
    Object? memoNo = freezed,
  }) {
    return _then(_MemoDeleteRequest(
      memoNo: memoNo == freezed
          ? _value.memoNo
          : memoNo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemoDeleteRequest implements _MemoDeleteRequest {
  const _$_MemoDeleteRequest({required this.memoNo});

  factory _$_MemoDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$$_MemoDeleteRequestFromJson(json);

  @override
  final int memoNo;

  @override
  String toString() {
    return 'MemoDeleteRequest(memoNo: $memoNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MemoDeleteRequest &&
            const DeepCollectionEquality().equals(other.memoNo, memoNo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(memoNo));

  @JsonKey(ignore: true)
  @override
  _$MemoDeleteRequestCopyWith<_MemoDeleteRequest> get copyWith =>
      __$MemoDeleteRequestCopyWithImpl<_MemoDeleteRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemoDeleteRequestToJson(this);
  }
}

abstract class _MemoDeleteRequest implements MemoDeleteRequest {
  const factory _MemoDeleteRequest({required int memoNo}) =
      _$_MemoDeleteRequest;

  factory _MemoDeleteRequest.fromJson(Map<String, dynamic> json) =
      _$_MemoDeleteRequest.fromJson;

  @override
  int get memoNo;
  @override
  @JsonKey(ignore: true)
  _$MemoDeleteRequestCopyWith<_MemoDeleteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
