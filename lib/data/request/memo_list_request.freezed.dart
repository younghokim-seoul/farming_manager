// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'memo_list_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemoListRequest _$MemoListRequestFromJson(Map<String, dynamic> json) {
  return _MemoListRequest.fromJson(json);
}

/// @nodoc
class _$MemoListRequestTearOff {
  const _$MemoListRequestTearOff();

  _MemoListRequest call({required int wYear, required int wMonth}) {
    return _MemoListRequest(
      wYear: wYear,
      wMonth: wMonth,
    );
  }

  MemoListRequest fromJson(Map<String, Object?> json) {
    return MemoListRequest.fromJson(json);
  }
}

/// @nodoc
const $MemoListRequest = _$MemoListRequestTearOff();

/// @nodoc
mixin _$MemoListRequest {
  int get wYear => throw _privateConstructorUsedError;
  int get wMonth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemoListRequestCopyWith<MemoListRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoListRequestCopyWith<$Res> {
  factory $MemoListRequestCopyWith(
          MemoListRequest value, $Res Function(MemoListRequest) then) =
      _$MemoListRequestCopyWithImpl<$Res>;
  $Res call({int wYear, int wMonth});
}

/// @nodoc
class _$MemoListRequestCopyWithImpl<$Res>
    implements $MemoListRequestCopyWith<$Res> {
  _$MemoListRequestCopyWithImpl(this._value, this._then);

  final MemoListRequest _value;
  // ignore: unused_field
  final $Res Function(MemoListRequest) _then;

  @override
  $Res call({
    Object? wYear = freezed,
    Object? wMonth = freezed,
  }) {
    return _then(_value.copyWith(
      wYear: wYear == freezed
          ? _value.wYear
          : wYear // ignore: cast_nullable_to_non_nullable
              as int,
      wMonth: wMonth == freezed
          ? _value.wMonth
          : wMonth // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$MemoListRequestCopyWith<$Res>
    implements $MemoListRequestCopyWith<$Res> {
  factory _$MemoListRequestCopyWith(
          _MemoListRequest value, $Res Function(_MemoListRequest) then) =
      __$MemoListRequestCopyWithImpl<$Res>;
  @override
  $Res call({int wYear, int wMonth});
}

/// @nodoc
class __$MemoListRequestCopyWithImpl<$Res>
    extends _$MemoListRequestCopyWithImpl<$Res>
    implements _$MemoListRequestCopyWith<$Res> {
  __$MemoListRequestCopyWithImpl(
      _MemoListRequest _value, $Res Function(_MemoListRequest) _then)
      : super(_value, (v) => _then(v as _MemoListRequest));

  @override
  _MemoListRequest get _value => super._value as _MemoListRequest;

  @override
  $Res call({
    Object? wYear = freezed,
    Object? wMonth = freezed,
  }) {
    return _then(_MemoListRequest(
      wYear: wYear == freezed
          ? _value.wYear
          : wYear // ignore: cast_nullable_to_non_nullable
              as int,
      wMonth: wMonth == freezed
          ? _value.wMonth
          : wMonth // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemoListRequest implements _MemoListRequest {
  const _$_MemoListRequest({required this.wYear, required this.wMonth});

  factory _$_MemoListRequest.fromJson(Map<String, dynamic> json) =>
      _$$_MemoListRequestFromJson(json);

  @override
  final int wYear;
  @override
  final int wMonth;

  @override
  String toString() {
    return 'MemoListRequest(wYear: $wYear, wMonth: $wMonth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MemoListRequest &&
            const DeepCollectionEquality().equals(other.wYear, wYear) &&
            const DeepCollectionEquality().equals(other.wMonth, wMonth));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(wYear),
      const DeepCollectionEquality().hash(wMonth));

  @JsonKey(ignore: true)
  @override
  _$MemoListRequestCopyWith<_MemoListRequest> get copyWith =>
      __$MemoListRequestCopyWithImpl<_MemoListRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemoListRequestToJson(this);
  }
}

abstract class _MemoListRequest implements MemoListRequest {
  const factory _MemoListRequest({required int wYear, required int wMonth}) =
      _$_MemoListRequest;

  factory _MemoListRequest.fromJson(Map<String, dynamic> json) =
      _$_MemoListRequest.fromJson;

  @override
  int get wYear;
  @override
  int get wMonth;
  @override
  @JsonKey(ignore: true)
  _$MemoListRequestCopyWith<_MemoListRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
