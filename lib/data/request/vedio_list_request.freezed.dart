// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vedio_list_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VedioListRequest _$VedioListRequestFromJson(Map<String, dynamic> json) {
  return _VedioListRequest.fromJson(json);
}

/// @nodoc
class _$VedioListRequestTearOff {
  const _$VedioListRequestTearOff();

  _VedioListRequest call({required String categoryCode, required int pageNo}) {
    return _VedioListRequest(
      categoryCode: categoryCode,
      pageNo: pageNo,
    );
  }

  VedioListRequest fromJson(Map<String, Object?> json) {
    return VedioListRequest.fromJson(json);
  }
}

/// @nodoc
const $VedioListRequest = _$VedioListRequestTearOff();

/// @nodoc
mixin _$VedioListRequest {
  String get categoryCode => throw _privateConstructorUsedError;
  int get pageNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VedioListRequestCopyWith<VedioListRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VedioListRequestCopyWith<$Res> {
  factory $VedioListRequestCopyWith(
          VedioListRequest value, $Res Function(VedioListRequest) then) =
      _$VedioListRequestCopyWithImpl<$Res>;
  $Res call({String categoryCode, int pageNo});
}

/// @nodoc
class _$VedioListRequestCopyWithImpl<$Res>
    implements $VedioListRequestCopyWith<$Res> {
  _$VedioListRequestCopyWithImpl(this._value, this._then);

  final VedioListRequest _value;
  // ignore: unused_field
  final $Res Function(VedioListRequest) _then;

  @override
  $Res call({
    Object? categoryCode = freezed,
    Object? pageNo = freezed,
  }) {
    return _then(_value.copyWith(
      categoryCode: categoryCode == freezed
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      pageNo: pageNo == freezed
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$VedioListRequestCopyWith<$Res>
    implements $VedioListRequestCopyWith<$Res> {
  factory _$VedioListRequestCopyWith(
          _VedioListRequest value, $Res Function(_VedioListRequest) then) =
      __$VedioListRequestCopyWithImpl<$Res>;
  @override
  $Res call({String categoryCode, int pageNo});
}

/// @nodoc
class __$VedioListRequestCopyWithImpl<$Res>
    extends _$VedioListRequestCopyWithImpl<$Res>
    implements _$VedioListRequestCopyWith<$Res> {
  __$VedioListRequestCopyWithImpl(
      _VedioListRequest _value, $Res Function(_VedioListRequest) _then)
      : super(_value, (v) => _then(v as _VedioListRequest));

  @override
  _VedioListRequest get _value => super._value as _VedioListRequest;

  @override
  $Res call({
    Object? categoryCode = freezed,
    Object? pageNo = freezed,
  }) {
    return _then(_VedioListRequest(
      categoryCode: categoryCode == freezed
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      pageNo: pageNo == freezed
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VedioListRequest implements _VedioListRequest {
  const _$_VedioListRequest({required this.categoryCode, required this.pageNo});

  factory _$_VedioListRequest.fromJson(Map<String, dynamic> json) =>
      _$$_VedioListRequestFromJson(json);

  @override
  final String categoryCode;
  @override
  final int pageNo;

  @override
  String toString() {
    return 'VedioListRequest(categoryCode: $categoryCode, pageNo: $pageNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VedioListRequest &&
            const DeepCollectionEquality()
                .equals(other.categoryCode, categoryCode) &&
            const DeepCollectionEquality().equals(other.pageNo, pageNo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(categoryCode),
      const DeepCollectionEquality().hash(pageNo));

  @JsonKey(ignore: true)
  @override
  _$VedioListRequestCopyWith<_VedioListRequest> get copyWith =>
      __$VedioListRequestCopyWithImpl<_VedioListRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VedioListRequestToJson(this);
  }
}

abstract class _VedioListRequest implements VedioListRequest {
  const factory _VedioListRequest(
      {required String categoryCode,
      required int pageNo}) = _$_VedioListRequest;

  factory _VedioListRequest.fromJson(Map<String, dynamic> json) =
      _$_VedioListRequest.fromJson;

  @override
  String get categoryCode;
  @override
  int get pageNo;
  @override
  @JsonKey(ignore: true)
  _$VedioListRequestCopyWith<_VedioListRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
