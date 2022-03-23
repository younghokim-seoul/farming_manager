// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeCategoryModel _$HomeCategoryModelFromJson(Map<String, dynamic> json) {
  return _HomeCategoryModel.fromJson(json);
}

/// @nodoc
class _$HomeCategoryModelTearOff {
  const _$HomeCategoryModelTearOff();

  _HomeCategoryModel call({required String name, required String id}) {
    return _HomeCategoryModel(
      name: name,
      id: id,
    );
  }

  HomeCategoryModel fromJson(Map<String, Object?> json) {
    return HomeCategoryModel.fromJson(json);
  }
}

/// @nodoc
const $HomeCategoryModel = _$HomeCategoryModelTearOff();

/// @nodoc
mixin _$HomeCategoryModel {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeCategoryModelCopyWith<HomeCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeCategoryModelCopyWith<$Res> {
  factory $HomeCategoryModelCopyWith(
          HomeCategoryModel value, $Res Function(HomeCategoryModel) then) =
      _$HomeCategoryModelCopyWithImpl<$Res>;
  $Res call({String name, String id});
}

/// @nodoc
class _$HomeCategoryModelCopyWithImpl<$Res>
    implements $HomeCategoryModelCopyWith<$Res> {
  _$HomeCategoryModelCopyWithImpl(this._value, this._then);

  final HomeCategoryModel _value;
  // ignore: unused_field
  final $Res Function(HomeCategoryModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$HomeCategoryModelCopyWith<$Res>
    implements $HomeCategoryModelCopyWith<$Res> {
  factory _$HomeCategoryModelCopyWith(
          _HomeCategoryModel value, $Res Function(_HomeCategoryModel) then) =
      __$HomeCategoryModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, String id});
}

/// @nodoc
class __$HomeCategoryModelCopyWithImpl<$Res>
    extends _$HomeCategoryModelCopyWithImpl<$Res>
    implements _$HomeCategoryModelCopyWith<$Res> {
  __$HomeCategoryModelCopyWithImpl(
      _HomeCategoryModel _value, $Res Function(_HomeCategoryModel) _then)
      : super(_value, (v) => _then(v as _HomeCategoryModel));

  @override
  _HomeCategoryModel get _value => super._value as _HomeCategoryModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_HomeCategoryModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeCategoryModel implements _HomeCategoryModel {
  const _$_HomeCategoryModel({required this.name, required this.id});

  factory _$_HomeCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_HomeCategoryModelFromJson(json);

  @override
  final String name;
  @override
  final String id;

  @override
  String toString() {
    return 'HomeCategoryModel(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeCategoryModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$HomeCategoryModelCopyWith<_HomeCategoryModel> get copyWith =>
      __$HomeCategoryModelCopyWithImpl<_HomeCategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeCategoryModelToJson(this);
  }
}

abstract class _HomeCategoryModel implements HomeCategoryModel {
  const factory _HomeCategoryModel({required String name, required String id}) =
      _$_HomeCategoryModel;

  factory _HomeCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_HomeCategoryModel.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$HomeCategoryModelCopyWith<_HomeCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
