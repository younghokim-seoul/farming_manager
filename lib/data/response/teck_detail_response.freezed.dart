// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'teck_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeckDetailResponse _$TeckDetailResponseFromJson(Map<String, dynamic> json) {
  return _TeckDetailResponse.fromJson(json);
}

/// @nodoc
class _$TeckDetailResponseTearOff {
  const _$TeckDetailResponseTearOff();

  _TeckDetailResponse call(
      {required String cntntsSj,
      required String questDtl,
      required String answerDtl}) {
    return _TeckDetailResponse(
      cntntsSj: cntntsSj,
      questDtl: questDtl,
      answerDtl: answerDtl,
    );
  }

  TeckDetailResponse fromJson(Map<String, Object?> json) {
    return TeckDetailResponse.fromJson(json);
  }
}

/// @nodoc
const $TeckDetailResponse = _$TeckDetailResponseTearOff();

/// @nodoc
mixin _$TeckDetailResponse {
  String get cntntsSj => throw _privateConstructorUsedError;
  String get questDtl => throw _privateConstructorUsedError;
  String get answerDtl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeckDetailResponseCopyWith<TeckDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeckDetailResponseCopyWith<$Res> {
  factory $TeckDetailResponseCopyWith(
          TeckDetailResponse value, $Res Function(TeckDetailResponse) then) =
      _$TeckDetailResponseCopyWithImpl<$Res>;
  $Res call({String cntntsSj, String questDtl, String answerDtl});
}

/// @nodoc
class _$TeckDetailResponseCopyWithImpl<$Res>
    implements $TeckDetailResponseCopyWith<$Res> {
  _$TeckDetailResponseCopyWithImpl(this._value, this._then);

  final TeckDetailResponse _value;
  // ignore: unused_field
  final $Res Function(TeckDetailResponse) _then;

  @override
  $Res call({
    Object? cntntsSj = freezed,
    Object? questDtl = freezed,
    Object? answerDtl = freezed,
  }) {
    return _then(_value.copyWith(
      cntntsSj: cntntsSj == freezed
          ? _value.cntntsSj
          : cntntsSj // ignore: cast_nullable_to_non_nullable
              as String,
      questDtl: questDtl == freezed
          ? _value.questDtl
          : questDtl // ignore: cast_nullable_to_non_nullable
              as String,
      answerDtl: answerDtl == freezed
          ? _value.answerDtl
          : answerDtl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TeckDetailResponseCopyWith<$Res>
    implements $TeckDetailResponseCopyWith<$Res> {
  factory _$TeckDetailResponseCopyWith(
          _TeckDetailResponse value, $Res Function(_TeckDetailResponse) then) =
      __$TeckDetailResponseCopyWithImpl<$Res>;
  @override
  $Res call({String cntntsSj, String questDtl, String answerDtl});
}

/// @nodoc
class __$TeckDetailResponseCopyWithImpl<$Res>
    extends _$TeckDetailResponseCopyWithImpl<$Res>
    implements _$TeckDetailResponseCopyWith<$Res> {
  __$TeckDetailResponseCopyWithImpl(
      _TeckDetailResponse _value, $Res Function(_TeckDetailResponse) _then)
      : super(_value, (v) => _then(v as _TeckDetailResponse));

  @override
  _TeckDetailResponse get _value => super._value as _TeckDetailResponse;

  @override
  $Res call({
    Object? cntntsSj = freezed,
    Object? questDtl = freezed,
    Object? answerDtl = freezed,
  }) {
    return _then(_TeckDetailResponse(
      cntntsSj: cntntsSj == freezed
          ? _value.cntntsSj
          : cntntsSj // ignore: cast_nullable_to_non_nullable
              as String,
      questDtl: questDtl == freezed
          ? _value.questDtl
          : questDtl // ignore: cast_nullable_to_non_nullable
              as String,
      answerDtl: answerDtl == freezed
          ? _value.answerDtl
          : answerDtl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TeckDetailResponse implements _TeckDetailResponse {
  const _$_TeckDetailResponse(
      {required this.cntntsSj,
      required this.questDtl,
      required this.answerDtl});

  factory _$_TeckDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TeckDetailResponseFromJson(json);

  @override
  final String cntntsSj;
  @override
  final String questDtl;
  @override
  final String answerDtl;

  @override
  String toString() {
    return 'TeckDetailResponse(cntntsSj: $cntntsSj, questDtl: $questDtl, answerDtl: $answerDtl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TeckDetailResponse &&
            const DeepCollectionEquality().equals(other.cntntsSj, cntntsSj) &&
            const DeepCollectionEquality().equals(other.questDtl, questDtl) &&
            const DeepCollectionEquality().equals(other.answerDtl, answerDtl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cntntsSj),
      const DeepCollectionEquality().hash(questDtl),
      const DeepCollectionEquality().hash(answerDtl));

  @JsonKey(ignore: true)
  @override
  _$TeckDetailResponseCopyWith<_TeckDetailResponse> get copyWith =>
      __$TeckDetailResponseCopyWithImpl<_TeckDetailResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeckDetailResponseToJson(this);
  }
}

abstract class _TeckDetailResponse implements TeckDetailResponse {
  const factory _TeckDetailResponse(
      {required String cntntsSj,
      required String questDtl,
      required String answerDtl}) = _$_TeckDetailResponse;

  factory _TeckDetailResponse.fromJson(Map<String, dynamic> json) =
      _$_TeckDetailResponse.fromJson;

  @override
  String get cntntsSj;
  @override
  String get questDtl;
  @override
  String get answerDtl;
  @override
  @JsonKey(ignore: true)
  _$TeckDetailResponseCopyWith<_TeckDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
