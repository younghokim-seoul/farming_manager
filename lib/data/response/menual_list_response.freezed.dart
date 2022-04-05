// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'menual_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MenualListResponse _$MenualListResponseFromJson(Map<String, dynamic> json) {
  return _MenualListResponse.fromJson(json);
}

/// @nodoc
class _$MenualListResponseTearOff {
  const _$MenualListResponseTearOff();

  _MenualListResponse call(
      {required String sj, required String fileDownUrlInfo}) {
    return _MenualListResponse(
      sj: sj,
      fileDownUrlInfo: fileDownUrlInfo,
    );
  }

  MenualListResponse fromJson(Map<String, Object?> json) {
    return MenualListResponse.fromJson(json);
  }
}

/// @nodoc
const $MenualListResponse = _$MenualListResponseTearOff();

/// @nodoc
mixin _$MenualListResponse {
  String get sj => throw _privateConstructorUsedError;
  String get fileDownUrlInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenualListResponseCopyWith<MenualListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenualListResponseCopyWith<$Res> {
  factory $MenualListResponseCopyWith(
          MenualListResponse value, $Res Function(MenualListResponse) then) =
      _$MenualListResponseCopyWithImpl<$Res>;
  $Res call({String sj, String fileDownUrlInfo});
}

/// @nodoc
class _$MenualListResponseCopyWithImpl<$Res>
    implements $MenualListResponseCopyWith<$Res> {
  _$MenualListResponseCopyWithImpl(this._value, this._then);

  final MenualListResponse _value;
  // ignore: unused_field
  final $Res Function(MenualListResponse) _then;

  @override
  $Res call({
    Object? sj = freezed,
    Object? fileDownUrlInfo = freezed,
  }) {
    return _then(_value.copyWith(
      sj: sj == freezed
          ? _value.sj
          : sj // ignore: cast_nullable_to_non_nullable
              as String,
      fileDownUrlInfo: fileDownUrlInfo == freezed
          ? _value.fileDownUrlInfo
          : fileDownUrlInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MenualListResponseCopyWith<$Res>
    implements $MenualListResponseCopyWith<$Res> {
  factory _$MenualListResponseCopyWith(
          _MenualListResponse value, $Res Function(_MenualListResponse) then) =
      __$MenualListResponseCopyWithImpl<$Res>;
  @override
  $Res call({String sj, String fileDownUrlInfo});
}

/// @nodoc
class __$MenualListResponseCopyWithImpl<$Res>
    extends _$MenualListResponseCopyWithImpl<$Res>
    implements _$MenualListResponseCopyWith<$Res> {
  __$MenualListResponseCopyWithImpl(
      _MenualListResponse _value, $Res Function(_MenualListResponse) _then)
      : super(_value, (v) => _then(v as _MenualListResponse));

  @override
  _MenualListResponse get _value => super._value as _MenualListResponse;

  @override
  $Res call({
    Object? sj = freezed,
    Object? fileDownUrlInfo = freezed,
  }) {
    return _then(_MenualListResponse(
      sj: sj == freezed
          ? _value.sj
          : sj // ignore: cast_nullable_to_non_nullable
              as String,
      fileDownUrlInfo: fileDownUrlInfo == freezed
          ? _value.fileDownUrlInfo
          : fileDownUrlInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MenualListResponse implements _MenualListResponse {
  const _$_MenualListResponse(
      {required this.sj, required this.fileDownUrlInfo});

  factory _$_MenualListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MenualListResponseFromJson(json);

  @override
  final String sj;
  @override
  final String fileDownUrlInfo;

  @override
  String toString() {
    return 'MenualListResponse(sj: $sj, fileDownUrlInfo: $fileDownUrlInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MenualListResponse &&
            const DeepCollectionEquality().equals(other.sj, sj) &&
            const DeepCollectionEquality()
                .equals(other.fileDownUrlInfo, fileDownUrlInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sj),
      const DeepCollectionEquality().hash(fileDownUrlInfo));

  @JsonKey(ignore: true)
  @override
  _$MenualListResponseCopyWith<_MenualListResponse> get copyWith =>
      __$MenualListResponseCopyWithImpl<_MenualListResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MenualListResponseToJson(this);
  }
}

abstract class _MenualListResponse implements MenualListResponse {
  const factory _MenualListResponse(
      {required String sj,
      required String fileDownUrlInfo}) = _$_MenualListResponse;

  factory _MenualListResponse.fromJson(Map<String, dynamic> json) =
      _$_MenualListResponse.fromJson;

  @override
  String get sj;
  @override
  String get fileDownUrlInfo;
  @override
  @JsonKey(ignore: true)
  _$MenualListResponseCopyWith<_MenualListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
