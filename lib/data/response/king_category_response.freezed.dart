// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'king_category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KindCategoryResponse _$KindCategoryResponseFromJson(Map<String, dynamic> json) {
  return _KindCategoryResponse.fromJson(json);
}

/// @nodoc
class _$KindCategoryResponseTearOff {
  const _$KindCategoryResponseTearOff();

  _KindCategoryResponse call(
      {required String categoryCode, required String categoryNm}) {
    return _KindCategoryResponse(
      categoryCode: categoryCode,
      categoryNm: categoryNm,
    );
  }

  KindCategoryResponse fromJson(Map<String, Object?> json) {
    return KindCategoryResponse.fromJson(json);
  }
}

/// @nodoc
const $KindCategoryResponse = _$KindCategoryResponseTearOff();

/// @nodoc
mixin _$KindCategoryResponse {
  String get categoryCode => throw _privateConstructorUsedError;
  String get categoryNm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KindCategoryResponseCopyWith<KindCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KindCategoryResponseCopyWith<$Res> {
  factory $KindCategoryResponseCopyWith(KindCategoryResponse value,
          $Res Function(KindCategoryResponse) then) =
      _$KindCategoryResponseCopyWithImpl<$Res>;
  $Res call({String categoryCode, String categoryNm});
}

/// @nodoc
class _$KindCategoryResponseCopyWithImpl<$Res>
    implements $KindCategoryResponseCopyWith<$Res> {
  _$KindCategoryResponseCopyWithImpl(this._value, this._then);

  final KindCategoryResponse _value;
  // ignore: unused_field
  final $Res Function(KindCategoryResponse) _then;

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
abstract class _$KindCategoryResponseCopyWith<$Res>
    implements $KindCategoryResponseCopyWith<$Res> {
  factory _$KindCategoryResponseCopyWith(_KindCategoryResponse value,
          $Res Function(_KindCategoryResponse) then) =
      __$KindCategoryResponseCopyWithImpl<$Res>;
  @override
  $Res call({String categoryCode, String categoryNm});
}

/// @nodoc
class __$KindCategoryResponseCopyWithImpl<$Res>
    extends _$KindCategoryResponseCopyWithImpl<$Res>
    implements _$KindCategoryResponseCopyWith<$Res> {
  __$KindCategoryResponseCopyWithImpl(
      _KindCategoryResponse _value, $Res Function(_KindCategoryResponse) _then)
      : super(_value, (v) => _then(v as _KindCategoryResponse));

  @override
  _KindCategoryResponse get _value => super._value as _KindCategoryResponse;

  @override
  $Res call({
    Object? categoryCode = freezed,
    Object? categoryNm = freezed,
  }) {
    return _then(_KindCategoryResponse(
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
class _$_KindCategoryResponse implements _KindCategoryResponse {
  const _$_KindCategoryResponse(
      {required this.categoryCode, required this.categoryNm});

  factory _$_KindCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_KindCategoryResponseFromJson(json);

  @override
  final String categoryCode;
  @override
  final String categoryNm;

  @override
  String toString() {
    return 'KindCategoryResponse(categoryCode: $categoryCode, categoryNm: $categoryNm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KindCategoryResponse &&
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
  _$KindCategoryResponseCopyWith<_KindCategoryResponse> get copyWith =>
      __$KindCategoryResponseCopyWithImpl<_KindCategoryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KindCategoryResponseToJson(this);
  }
}

abstract class _KindCategoryResponse implements KindCategoryResponse {
  const factory _KindCategoryResponse(
      {required String categoryCode,
      required String categoryNm}) = _$_KindCategoryResponse;

  factory _KindCategoryResponse.fromJson(Map<String, dynamic> json) =
      _$_KindCategoryResponse.fromJson;

  @override
  String get categoryCode;
  @override
  String get categoryNm;
  @override
  @JsonKey(ignore: true)
  _$KindCategoryResponseCopyWith<_KindCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
