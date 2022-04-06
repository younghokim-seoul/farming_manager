// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dstr_prevnt_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DstrPrevntListResponse _$DstrPrevntListResponseFromJson(
    Map<String, dynamic> json) {
  return _DstrPrevntListResponse.fromJson(json);
}

/// @nodoc
class _$DstrPrevntListResponseTearOff {
  const _$DstrPrevntListResponseTearOff();

  _DstrPrevntListResponse call(
      {required String rtnFileSn,
      required String cntntsSj,
      required String downUrl}) {
    return _DstrPrevntListResponse(
      rtnFileSn: rtnFileSn,
      cntntsSj: cntntsSj,
      downUrl: downUrl,
    );
  }

  DstrPrevntListResponse fromJson(Map<String, Object?> json) {
    return DstrPrevntListResponse.fromJson(json);
  }
}

/// @nodoc
const $DstrPrevntListResponse = _$DstrPrevntListResponseTearOff();

/// @nodoc
mixin _$DstrPrevntListResponse {
  String get rtnFileSn => throw _privateConstructorUsedError;
  String get cntntsSj => throw _privateConstructorUsedError;
  String get downUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DstrPrevntListResponseCopyWith<DstrPrevntListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DstrPrevntListResponseCopyWith<$Res> {
  factory $DstrPrevntListResponseCopyWith(DstrPrevntListResponse value,
          $Res Function(DstrPrevntListResponse) then) =
      _$DstrPrevntListResponseCopyWithImpl<$Res>;
  $Res call({String rtnFileSn, String cntntsSj, String downUrl});
}

/// @nodoc
class _$DstrPrevntListResponseCopyWithImpl<$Res>
    implements $DstrPrevntListResponseCopyWith<$Res> {
  _$DstrPrevntListResponseCopyWithImpl(this._value, this._then);

  final DstrPrevntListResponse _value;
  // ignore: unused_field
  final $Res Function(DstrPrevntListResponse) _then;

  @override
  $Res call({
    Object? rtnFileSn = freezed,
    Object? cntntsSj = freezed,
    Object? downUrl = freezed,
  }) {
    return _then(_value.copyWith(
      rtnFileSn: rtnFileSn == freezed
          ? _value.rtnFileSn
          : rtnFileSn // ignore: cast_nullable_to_non_nullable
              as String,
      cntntsSj: cntntsSj == freezed
          ? _value.cntntsSj
          : cntntsSj // ignore: cast_nullable_to_non_nullable
              as String,
      downUrl: downUrl == freezed
          ? _value.downUrl
          : downUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DstrPrevntListResponseCopyWith<$Res>
    implements $DstrPrevntListResponseCopyWith<$Res> {
  factory _$DstrPrevntListResponseCopyWith(_DstrPrevntListResponse value,
          $Res Function(_DstrPrevntListResponse) then) =
      __$DstrPrevntListResponseCopyWithImpl<$Res>;
  @override
  $Res call({String rtnFileSn, String cntntsSj, String downUrl});
}

/// @nodoc
class __$DstrPrevntListResponseCopyWithImpl<$Res>
    extends _$DstrPrevntListResponseCopyWithImpl<$Res>
    implements _$DstrPrevntListResponseCopyWith<$Res> {
  __$DstrPrevntListResponseCopyWithImpl(_DstrPrevntListResponse _value,
      $Res Function(_DstrPrevntListResponse) _then)
      : super(_value, (v) => _then(v as _DstrPrevntListResponse));

  @override
  _DstrPrevntListResponse get _value => super._value as _DstrPrevntListResponse;

  @override
  $Res call({
    Object? rtnFileSn = freezed,
    Object? cntntsSj = freezed,
    Object? downUrl = freezed,
  }) {
    return _then(_DstrPrevntListResponse(
      rtnFileSn: rtnFileSn == freezed
          ? _value.rtnFileSn
          : rtnFileSn // ignore: cast_nullable_to_non_nullable
              as String,
      cntntsSj: cntntsSj == freezed
          ? _value.cntntsSj
          : cntntsSj // ignore: cast_nullable_to_non_nullable
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
class _$_DstrPrevntListResponse implements _DstrPrevntListResponse {
  const _$_DstrPrevntListResponse(
      {required this.rtnFileSn, required this.cntntsSj, required this.downUrl});

  factory _$_DstrPrevntListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DstrPrevntListResponseFromJson(json);

  @override
  final String rtnFileSn;
  @override
  final String cntntsSj;
  @override
  final String downUrl;

  @override
  String toString() {
    return 'DstrPrevntListResponse(rtnFileSn: $rtnFileSn, cntntsSj: $cntntsSj, downUrl: $downUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DstrPrevntListResponse &&
            const DeepCollectionEquality().equals(other.rtnFileSn, rtnFileSn) &&
            const DeepCollectionEquality().equals(other.cntntsSj, cntntsSj) &&
            const DeepCollectionEquality().equals(other.downUrl, downUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rtnFileSn),
      const DeepCollectionEquality().hash(cntntsSj),
      const DeepCollectionEquality().hash(downUrl));

  @JsonKey(ignore: true)
  @override
  _$DstrPrevntListResponseCopyWith<_DstrPrevntListResponse> get copyWith =>
      __$DstrPrevntListResponseCopyWithImpl<_DstrPrevntListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DstrPrevntListResponseToJson(this);
  }
}

abstract class _DstrPrevntListResponse implements DstrPrevntListResponse {
  const factory _DstrPrevntListResponse(
      {required String rtnFileSn,
      required String cntntsSj,
      required String downUrl}) = _$_DstrPrevntListResponse;

  factory _DstrPrevntListResponse.fromJson(Map<String, dynamic> json) =
      _$_DstrPrevntListResponse.fromJson;

  @override
  String get rtnFileSn;
  @override
  String get cntntsSj;
  @override
  String get downUrl;
  @override
  @JsonKey(ignore: true)
  _$DstrPrevntListResponseCopyWith<_DstrPrevntListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
