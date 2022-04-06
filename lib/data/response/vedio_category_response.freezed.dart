// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vedio_category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VedioCategoryResponse _$VedioCategoryResponseFromJson(
    Map<String, dynamic> json) {
  return _VedioCategoryResponse.fromJson(json);
}

/// @nodoc
class _$VedioCategoryResponseTearOff {
  const _$VedioCategoryResponseTearOff();

  _VedioCategoryResponse call(
      {required String categoryCode, required String categoryNm}) {
    return _VedioCategoryResponse(
      categoryCode: categoryCode,
      categoryNm: categoryNm,
    );
  }

  VedioCategoryResponse fromJson(Map<String, Object?> json) {
    return VedioCategoryResponse.fromJson(json);
  }
}

/// @nodoc
const $VedioCategoryResponse = _$VedioCategoryResponseTearOff();

/// @nodoc
mixin _$VedioCategoryResponse {
  String get categoryCode => throw _privateConstructorUsedError;
  String get categoryNm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VedioCategoryResponseCopyWith<VedioCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VedioCategoryResponseCopyWith<$Res> {
  factory $VedioCategoryResponseCopyWith(VedioCategoryResponse value,
          $Res Function(VedioCategoryResponse) then) =
      _$VedioCategoryResponseCopyWithImpl<$Res>;
  $Res call({String categoryCode, String categoryNm});
}

/// @nodoc
class _$VedioCategoryResponseCopyWithImpl<$Res>
    implements $VedioCategoryResponseCopyWith<$Res> {
  _$VedioCategoryResponseCopyWithImpl(this._value, this._then);

  final VedioCategoryResponse _value;
  // ignore: unused_field
  final $Res Function(VedioCategoryResponse) _then;

  @override
  $Res call({
    Object? categoryCode = freezed,
    Object? categoryNm = freezed,
  }) {
    return _then(_value.copyWith(
      categoryCode: categoryCode == freezed
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      categoryNm: categoryNm == freezed
          ? _value.categoryNm
          : categoryNm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$VedioCategoryResponseCopyWith<$Res>
    implements $VedioCategoryResponseCopyWith<$Res> {
  factory _$VedioCategoryResponseCopyWith(_VedioCategoryResponse value,
          $Res Function(_VedioCategoryResponse) then) =
      __$VedioCategoryResponseCopyWithImpl<$Res>;
  @override
  $Res call({String categoryCode, String categoryNm});
}

/// @nodoc
class __$VedioCategoryResponseCopyWithImpl<$Res>
    extends _$VedioCategoryResponseCopyWithImpl<$Res>
    implements _$VedioCategoryResponseCopyWith<$Res> {
  __$VedioCategoryResponseCopyWithImpl(_VedioCategoryResponse _value,
      $Res Function(_VedioCategoryResponse) _then)
      : super(_value, (v) => _then(v as _VedioCategoryResponse));

  @override
  _VedioCategoryResponse get _value => super._value as _VedioCategoryResponse;

  @override
  $Res call({
    Object? categoryCode = freezed,
    Object? categoryNm = freezed,
  }) {
    return _then(_VedioCategoryResponse(
      categoryCode: categoryCode == freezed
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      categoryNm: categoryNm == freezed
          ? _value.categoryNm
          : categoryNm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VedioCategoryResponse implements _VedioCategoryResponse {
  const _$_VedioCategoryResponse(
      {required this.categoryCode, required this.categoryNm});

  factory _$_VedioCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_VedioCategoryResponseFromJson(json);

  @override
  final String categoryCode;
  @override
  final String categoryNm;

  @override
  String toString() {
    return 'VedioCategoryResponse(categoryCode: $categoryCode, categoryNm: $categoryNm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VedioCategoryResponse &&
            const DeepCollectionEquality()
                .equals(other.categoryCode, categoryCode) &&
            const DeepCollectionEquality()
                .equals(other.categoryNm, categoryNm));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(categoryCode),
      const DeepCollectionEquality().hash(categoryNm));

  @JsonKey(ignore: true)
  @override
  _$VedioCategoryResponseCopyWith<_VedioCategoryResponse> get copyWith =>
      __$VedioCategoryResponseCopyWithImpl<_VedioCategoryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VedioCategoryResponseToJson(this);
  }
}

abstract class _VedioCategoryResponse implements VedioCategoryResponse {
  const factory _VedioCategoryResponse(
      {required String categoryCode,
      required String categoryNm}) = _$_VedioCategoryResponse;

  factory _VedioCategoryResponse.fromJson(Map<String, dynamic> json) =
      _$_VedioCategoryResponse.fromJson;

  @override
  String get categoryCode;
  @override
  String get categoryNm;
  @override
  @JsonKey(ignore: true)
  _$VedioCategoryResponseCopyWith<_VedioCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
