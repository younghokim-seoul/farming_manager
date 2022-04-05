// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'menual_list_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MenualListRequest _$MenualListRequestFromJson(Map<String, dynamic> json) {
  return _MenualListRequest.fromJson(json);
}

/// @nodoc
class _$MenualListRequestTearOff {
  const _$MenualListRequestTearOff();

  _MenualListRequest call({required String kidofcomdtySeCode}) {
    return _MenualListRequest(
      kidofcomdtySeCode: kidofcomdtySeCode,
    );
  }

  MenualListRequest fromJson(Map<String, Object?> json) {
    return MenualListRequest.fromJson(json);
  }
}

/// @nodoc
const $MenualListRequest = _$MenualListRequestTearOff();

/// @nodoc
mixin _$MenualListRequest {
  String get kidofcomdtySeCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenualListRequestCopyWith<MenualListRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenualListRequestCopyWith<$Res> {
  factory $MenualListRequestCopyWith(
          MenualListRequest value, $Res Function(MenualListRequest) then) =
      _$MenualListRequestCopyWithImpl<$Res>;
  $Res call({String kidofcomdtySeCode});
}

/// @nodoc
class _$MenualListRequestCopyWithImpl<$Res>
    implements $MenualListRequestCopyWith<$Res> {
  _$MenualListRequestCopyWithImpl(this._value, this._then);

  final MenualListRequest _value;
  // ignore: unused_field
  final $Res Function(MenualListRequest) _then;

  @override
  $Res call({
    Object? kidofcomdtySeCode = freezed,
  }) {
    return _then(_value.copyWith(
      kidofcomdtySeCode: kidofcomdtySeCode == freezed
          ? _value.kidofcomdtySeCode
          : kidofcomdtySeCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MenualListRequestCopyWith<$Res>
    implements $MenualListRequestCopyWith<$Res> {
  factory _$MenualListRequestCopyWith(
          _MenualListRequest value, $Res Function(_MenualListRequest) then) =
      __$MenualListRequestCopyWithImpl<$Res>;
  @override
  $Res call({String kidofcomdtySeCode});
}

/// @nodoc
class __$MenualListRequestCopyWithImpl<$Res>
    extends _$MenualListRequestCopyWithImpl<$Res>
    implements _$MenualListRequestCopyWith<$Res> {
  __$MenualListRequestCopyWithImpl(
      _MenualListRequest _value, $Res Function(_MenualListRequest) _then)
      : super(_value, (v) => _then(v as _MenualListRequest));

  @override
  _MenualListRequest get _value => super._value as _MenualListRequest;

  @override
  $Res call({
    Object? kidofcomdtySeCode = freezed,
  }) {
    return _then(_MenualListRequest(
      kidofcomdtySeCode: kidofcomdtySeCode == freezed
          ? _value.kidofcomdtySeCode
          : kidofcomdtySeCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MenualListRequest implements _MenualListRequest {
  const _$_MenualListRequest({required this.kidofcomdtySeCode});

  factory _$_MenualListRequest.fromJson(Map<String, dynamic> json) =>
      _$$_MenualListRequestFromJson(json);

  @override
  final String kidofcomdtySeCode;

  @override
  String toString() {
    return 'MenualListRequest(kidofcomdtySeCode: $kidofcomdtySeCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MenualListRequest &&
            const DeepCollectionEquality()
                .equals(other.kidofcomdtySeCode, kidofcomdtySeCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(kidofcomdtySeCode));

  @JsonKey(ignore: true)
  @override
  _$MenualListRequestCopyWith<_MenualListRequest> get copyWith =>
      __$MenualListRequestCopyWithImpl<_MenualListRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MenualListRequestToJson(this);
  }
}

abstract class _MenualListRequest implements MenualListRequest {
  const factory _MenualListRequest({required String kidofcomdtySeCode}) =
      _$_MenualListRequest;

  factory _MenualListRequest.fromJson(Map<String, dynamic> json) =
      _$_MenualListRequest.fromJson;

  @override
  String get kidofcomdtySeCode;
  @override
  @JsonKey(ignore: true)
  _$MenualListRequestCopyWith<_MenualListRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
