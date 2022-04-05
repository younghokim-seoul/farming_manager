// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'king_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KindDetailResponse _$KindDetailResponseFromJson(Map<String, dynamic> json) {
  return _KindDetailResponse.fromJson(json);
}

/// @nodoc
class _$KindDetailResponseTearOff {
  const _$KindDetailResponseTearOff();

  _KindDetailResponse call(
      {required String cntntsSj,
      required String? imgFileLink,
      required String? mainChartrInfo}) {
    return _KindDetailResponse(
      cntntsSj: cntntsSj,
      imgFileLink: imgFileLink,
      mainChartrInfo: mainChartrInfo,
    );
  }

  KindDetailResponse fromJson(Map<String, Object?> json) {
    return KindDetailResponse.fromJson(json);
  }
}

/// @nodoc
const $KindDetailResponse = _$KindDetailResponseTearOff();

/// @nodoc
mixin _$KindDetailResponse {
  String get cntntsSj => throw _privateConstructorUsedError;
  String? get imgFileLink => throw _privateConstructorUsedError;
  String? get mainChartrInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KindDetailResponseCopyWith<KindDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KindDetailResponseCopyWith<$Res> {
  factory $KindDetailResponseCopyWith(
          KindDetailResponse value, $Res Function(KindDetailResponse) then) =
      _$KindDetailResponseCopyWithImpl<$Res>;
  $Res call({String cntntsSj, String? imgFileLink, String? mainChartrInfo});
}

/// @nodoc
class _$KindDetailResponseCopyWithImpl<$Res>
    implements $KindDetailResponseCopyWith<$Res> {
  _$KindDetailResponseCopyWithImpl(this._value, this._then);

  final KindDetailResponse _value;
  // ignore: unused_field
  final $Res Function(KindDetailResponse) _then;

  @override
  $Res call({
    Object? cntntsSj = freezed,
    Object? imgFileLink = freezed,
    Object? mainChartrInfo = freezed,
  }) {
    return _then(_value.copyWith(
      cntntsSj: cntntsSj == freezed
          ? _value.cntntsSj
          : cntntsSj // ignore: cast_nullable_to_non_nullable
              as String,
      imgFileLink: imgFileLink == freezed
          ? _value.imgFileLink
          : imgFileLink // ignore: cast_nullable_to_non_nullable
              as String?,
      mainChartrInfo: mainChartrInfo == freezed
          ? _value.mainChartrInfo
          : mainChartrInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$KindDetailResponseCopyWith<$Res>
    implements $KindDetailResponseCopyWith<$Res> {
  factory _$KindDetailResponseCopyWith(
          _KindDetailResponse value, $Res Function(_KindDetailResponse) then) =
      __$KindDetailResponseCopyWithImpl<$Res>;
  @override
  $Res call({String cntntsSj, String? imgFileLink, String? mainChartrInfo});
}

/// @nodoc
class __$KindDetailResponseCopyWithImpl<$Res>
    extends _$KindDetailResponseCopyWithImpl<$Res>
    implements _$KindDetailResponseCopyWith<$Res> {
  __$KindDetailResponseCopyWithImpl(
      _KindDetailResponse _value, $Res Function(_KindDetailResponse) _then)
      : super(_value, (v) => _then(v as _KindDetailResponse));

  @override
  _KindDetailResponse get _value => super._value as _KindDetailResponse;

  @override
  $Res call({
    Object? cntntsSj = freezed,
    Object? imgFileLink = freezed,
    Object? mainChartrInfo = freezed,
  }) {
    return _then(_KindDetailResponse(
      cntntsSj: cntntsSj == freezed
          ? _value.cntntsSj
          : cntntsSj // ignore: cast_nullable_to_non_nullable
              as String,
      imgFileLink: imgFileLink == freezed
          ? _value.imgFileLink
          : imgFileLink // ignore: cast_nullable_to_non_nullable
              as String?,
      mainChartrInfo: mainChartrInfo == freezed
          ? _value.mainChartrInfo
          : mainChartrInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KindDetailResponse implements _KindDetailResponse {
  const _$_KindDetailResponse(
      {required this.cntntsSj,
      required this.imgFileLink,
      required this.mainChartrInfo});

  factory _$_KindDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$$_KindDetailResponseFromJson(json);

  @override
  final String cntntsSj;
  @override
  final String? imgFileLink;
  @override
  final String? mainChartrInfo;

  @override
  String toString() {
    return 'KindDetailResponse(cntntsSj: $cntntsSj, imgFileLink: $imgFileLink, mainChartrInfo: $mainChartrInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KindDetailResponse &&
            const DeepCollectionEquality().equals(other.cntntsSj, cntntsSj) &&
            const DeepCollectionEquality()
                .equals(other.imgFileLink, imgFileLink) &&
            const DeepCollectionEquality()
                .equals(other.mainChartrInfo, mainChartrInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cntntsSj),
      const DeepCollectionEquality().hash(imgFileLink),
      const DeepCollectionEquality().hash(mainChartrInfo));

  @JsonKey(ignore: true)
  @override
  _$KindDetailResponseCopyWith<_KindDetailResponse> get copyWith =>
      __$KindDetailResponseCopyWithImpl<_KindDetailResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KindDetailResponseToJson(this);
  }
}

abstract class _KindDetailResponse implements KindDetailResponse {
  const factory _KindDetailResponse(
      {required String cntntsSj,
      required String? imgFileLink,
      required String? mainChartrInfo}) = _$_KindDetailResponse;

  factory _KindDetailResponse.fromJson(Map<String, dynamic> json) =
      _$_KindDetailResponse.fromJson;

  @override
  String get cntntsSj;
  @override
  String? get imgFileLink;
  @override
  String? get mainChartrInfo;
  @override
  @JsonKey(ignore: true)
  _$KindDetailResponseCopyWith<_KindDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
