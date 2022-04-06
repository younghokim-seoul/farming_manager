// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'teck_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeckResponse _$TeckResponseFromJson(Map<String, dynamic> json) {
  return _TeckResponse.fromJson(json);
}

/// @nodoc
class _$TeckResponseTearOff {
  const _$TeckResponseTearOff();

  _TeckResponse call(
      {required String cntntsNo,
      required String cntntsSj,
      required String regDt,
      required String rdcnt}) {
    return _TeckResponse(
      cntntsNo: cntntsNo,
      cntntsSj: cntntsSj,
      regDt: regDt,
      rdcnt: rdcnt,
    );
  }

  TeckResponse fromJson(Map<String, Object?> json) {
    return TeckResponse.fromJson(json);
  }
}

/// @nodoc
const $TeckResponse = _$TeckResponseTearOff();

/// @nodoc
mixin _$TeckResponse {
  String get cntntsNo => throw _privateConstructorUsedError;
  String get cntntsSj => throw _privateConstructorUsedError;
  String get regDt => throw _privateConstructorUsedError;
  String get rdcnt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeckResponseCopyWith<TeckResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeckResponseCopyWith<$Res> {
  factory $TeckResponseCopyWith(
          TeckResponse value, $Res Function(TeckResponse) then) =
      _$TeckResponseCopyWithImpl<$Res>;
  $Res call({String cntntsNo, String cntntsSj, String regDt, String rdcnt});
}

/// @nodoc
class _$TeckResponseCopyWithImpl<$Res> implements $TeckResponseCopyWith<$Res> {
  _$TeckResponseCopyWithImpl(this._value, this._then);

  final TeckResponse _value;
  // ignore: unused_field
  final $Res Function(TeckResponse) _then;

  @override
  $Res call({
    Object? cntntsNo = freezed,
    Object? cntntsSj = freezed,
    Object? regDt = freezed,
    Object? rdcnt = freezed,
  }) {
    return _then(_value.copyWith(
      cntntsNo: cntntsNo == freezed
          ? _value.cntntsNo
          : cntntsNo // ignore: cast_nullable_to_non_nullable
              as String,
      cntntsSj: cntntsSj == freezed
          ? _value.cntntsSj
          : cntntsSj // ignore: cast_nullable_to_non_nullable
              as String,
      regDt: regDt == freezed
          ? _value.regDt
          : regDt // ignore: cast_nullable_to_non_nullable
              as String,
      rdcnt: rdcnt == freezed
          ? _value.rdcnt
          : rdcnt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TeckResponseCopyWith<$Res>
    implements $TeckResponseCopyWith<$Res> {
  factory _$TeckResponseCopyWith(
          _TeckResponse value, $Res Function(_TeckResponse) then) =
      __$TeckResponseCopyWithImpl<$Res>;
  @override
  $Res call({String cntntsNo, String cntntsSj, String regDt, String rdcnt});
}

/// @nodoc
class __$TeckResponseCopyWithImpl<$Res> extends _$TeckResponseCopyWithImpl<$Res>
    implements _$TeckResponseCopyWith<$Res> {
  __$TeckResponseCopyWithImpl(
      _TeckResponse _value, $Res Function(_TeckResponse) _then)
      : super(_value, (v) => _then(v as _TeckResponse));

  @override
  _TeckResponse get _value => super._value as _TeckResponse;

  @override
  $Res call({
    Object? cntntsNo = freezed,
    Object? cntntsSj = freezed,
    Object? regDt = freezed,
    Object? rdcnt = freezed,
  }) {
    return _then(_TeckResponse(
      cntntsNo: cntntsNo == freezed
          ? _value.cntntsNo
          : cntntsNo // ignore: cast_nullable_to_non_nullable
              as String,
      cntntsSj: cntntsSj == freezed
          ? _value.cntntsSj
          : cntntsSj // ignore: cast_nullable_to_non_nullable
              as String,
      regDt: regDt == freezed
          ? _value.regDt
          : regDt // ignore: cast_nullable_to_non_nullable
              as String,
      rdcnt: rdcnt == freezed
          ? _value.rdcnt
          : rdcnt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TeckResponse implements _TeckResponse {
  const _$_TeckResponse(
      {required this.cntntsNo,
      required this.cntntsSj,
      required this.regDt,
      required this.rdcnt});

  factory _$_TeckResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TeckResponseFromJson(json);

  @override
  final String cntntsNo;
  @override
  final String cntntsSj;
  @override
  final String regDt;
  @override
  final String rdcnt;

  @override
  String toString() {
    return 'TeckResponse(cntntsNo: $cntntsNo, cntntsSj: $cntntsSj, regDt: $regDt, rdcnt: $rdcnt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TeckResponse &&
            const DeepCollectionEquality().equals(other.cntntsNo, cntntsNo) &&
            const DeepCollectionEquality().equals(other.cntntsSj, cntntsSj) &&
            const DeepCollectionEquality().equals(other.regDt, regDt) &&
            const DeepCollectionEquality().equals(other.rdcnt, rdcnt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cntntsNo),
      const DeepCollectionEquality().hash(cntntsSj),
      const DeepCollectionEquality().hash(regDt),
      const DeepCollectionEquality().hash(rdcnt));

  @JsonKey(ignore: true)
  @override
  _$TeckResponseCopyWith<_TeckResponse> get copyWith =>
      __$TeckResponseCopyWithImpl<_TeckResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeckResponseToJson(this);
  }
}

abstract class _TeckResponse implements TeckResponse {
  const factory _TeckResponse(
      {required String cntntsNo,
      required String cntntsSj,
      required String regDt,
      required String rdcnt}) = _$_TeckResponse;

  factory _TeckResponse.fromJson(Map<String, dynamic> json) =
      _$_TeckResponse.fromJson;

  @override
  String get cntntsNo;
  @override
  String get cntntsSj;
  @override
  String get regDt;
  @override
  String get rdcnt;
  @override
  @JsonKey(ignore: true)
  _$TeckResponseCopyWith<_TeckResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
