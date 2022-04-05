// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'menual_category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MenualCategoryResponse _$MenualCategoryResponseFromJson(
    Map<String, dynamic> json) {
  return _MenualCategoryResponse.fromJson(json);
}

/// @nodoc
class _$MenualCategoryResponseTearOff {
  const _$MenualCategoryResponseTearOff();

  _MenualCategoryResponse call(
      {required String kidofcomdtySeCode, required String codeNm}) {
    return _MenualCategoryResponse(
      kidofcomdtySeCode: kidofcomdtySeCode,
      codeNm: codeNm,
    );
  }

  MenualCategoryResponse fromJson(Map<String, Object?> json) {
    return MenualCategoryResponse.fromJson(json);
  }
}

/// @nodoc
const $MenualCategoryResponse = _$MenualCategoryResponseTearOff();

/// @nodoc
mixin _$MenualCategoryResponse {
  String get kidofcomdtySeCode => throw _privateConstructorUsedError;
  String get codeNm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenualCategoryResponseCopyWith<MenualCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenualCategoryResponseCopyWith<$Res> {
  factory $MenualCategoryResponseCopyWith(MenualCategoryResponse value,
          $Res Function(MenualCategoryResponse) then) =
      _$MenualCategoryResponseCopyWithImpl<$Res>;
  $Res call({String kidofcomdtySeCode, String codeNm});
}

/// @nodoc
class _$MenualCategoryResponseCopyWithImpl<$Res>
    implements $MenualCategoryResponseCopyWith<$Res> {
  _$MenualCategoryResponseCopyWithImpl(this._value, this._then);

  final MenualCategoryResponse _value;
  // ignore: unused_field
  final $Res Function(MenualCategoryResponse) _then;

  @override
  $Res call({
    Object? kidofcomdtySeCode = freezed,
    Object? codeNm = freezed,
  }) {
    return _then(_value.copyWith(
      kidofcomdtySeCode: kidofcomdtySeCode == freezed
          ? _value.kidofcomdtySeCode
          : kidofcomdtySeCode // ignore: cast_nullable_to_non_nullable
              as String,
      codeNm: codeNm == freezed
          ? _value.codeNm
          : codeNm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MenualCategoryResponseCopyWith<$Res>
    implements $MenualCategoryResponseCopyWith<$Res> {
  factory _$MenualCategoryResponseCopyWith(_MenualCategoryResponse value,
          $Res Function(_MenualCategoryResponse) then) =
      __$MenualCategoryResponseCopyWithImpl<$Res>;
  @override
  $Res call({String kidofcomdtySeCode, String codeNm});
}

/// @nodoc
class __$MenualCategoryResponseCopyWithImpl<$Res>
    extends _$MenualCategoryResponseCopyWithImpl<$Res>
    implements _$MenualCategoryResponseCopyWith<$Res> {
  __$MenualCategoryResponseCopyWithImpl(_MenualCategoryResponse _value,
      $Res Function(_MenualCategoryResponse) _then)
      : super(_value, (v) => _then(v as _MenualCategoryResponse));

  @override
  _MenualCategoryResponse get _value => super._value as _MenualCategoryResponse;

  @override
  $Res call({
    Object? kidofcomdtySeCode = freezed,
    Object? codeNm = freezed,
  }) {
    return _then(_MenualCategoryResponse(
      kidofcomdtySeCode: kidofcomdtySeCode == freezed
          ? _value.kidofcomdtySeCode
          : kidofcomdtySeCode // ignore: cast_nullable_to_non_nullable
              as String,
      codeNm: codeNm == freezed
          ? _value.codeNm
          : codeNm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MenualCategoryResponse implements _MenualCategoryResponse {
  const _$_MenualCategoryResponse(
      {required this.kidofcomdtySeCode, required this.codeNm});

  factory _$_MenualCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MenualCategoryResponseFromJson(json);

  @override
  final String kidofcomdtySeCode;
  @override
  final String codeNm;

  @override
  String toString() {
    return 'MenualCategoryResponse(kidofcomdtySeCode: $kidofcomdtySeCode, codeNm: $codeNm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MenualCategoryResponse &&
            const DeepCollectionEquality()
                .equals(other.kidofcomdtySeCode, kidofcomdtySeCode) &&
            const DeepCollectionEquality().equals(other.codeNm, codeNm));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(kidofcomdtySeCode),
      const DeepCollectionEquality().hash(codeNm));

  @JsonKey(ignore: true)
  @override
  _$MenualCategoryResponseCopyWith<_MenualCategoryResponse> get copyWith =>
      __$MenualCategoryResponseCopyWithImpl<_MenualCategoryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MenualCategoryResponseToJson(this);
  }
}

abstract class _MenualCategoryResponse implements MenualCategoryResponse {
  const factory _MenualCategoryResponse(
      {required String kidofcomdtySeCode,
      required String codeNm}) = _$_MenualCategoryResponse;

  factory _MenualCategoryResponse.fromJson(Map<String, dynamic> json) =
      _$_MenualCategoryResponse.fromJson;

  @override
  String get kidofcomdtySeCode;
  @override
  String get codeNm;
  @override
  @JsonKey(ignore: true)
  _$MenualCategoryResponseCopyWith<_MenualCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
