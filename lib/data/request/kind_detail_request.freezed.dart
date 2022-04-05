// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'kind_detail_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KindDetailRequest _$KindDetailRequestFromJson(Map<String, dynamic> json) {
  return _KindDetailRequest.fromJson(json);
}

/// @nodoc
class _$KindDetailRequestTearOff {
  const _$KindDetailRequestTearOff();

  _KindDetailRequest call({required String categoryCode, required int pageNo}) {
    return _KindDetailRequest(
      categoryCode: categoryCode,
      pageNo: pageNo,
    );
  }

  KindDetailRequest fromJson(Map<String, Object?> json) {
    return KindDetailRequest.fromJson(json);
  }
}

/// @nodoc
const $KindDetailRequest = _$KindDetailRequestTearOff();

/// @nodoc
mixin _$KindDetailRequest {
  String get categoryCode => throw _privateConstructorUsedError;
  int get pageNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KindDetailRequestCopyWith<KindDetailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KindDetailRequestCopyWith<$Res> {
  factory $KindDetailRequestCopyWith(
          KindDetailRequest value, $Res Function(KindDetailRequest) then) =
      _$KindDetailRequestCopyWithImpl<$Res>;
  $Res call({String categoryCode, int pageNo});
}

/// @nodoc
class _$KindDetailRequestCopyWithImpl<$Res>
    implements $KindDetailRequestCopyWith<$Res> {
  _$KindDetailRequestCopyWithImpl(this._value, this._then);

  final KindDetailRequest _value;
  // ignore: unused_field
  final $Res Function(KindDetailRequest) _then;

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
abstract class _$KindDetailRequestCopyWith<$Res>
    implements $KindDetailRequestCopyWith<$Res> {
  factory _$KindDetailRequestCopyWith(
          _KindDetailRequest value, $Res Function(_KindDetailRequest) then) =
      __$KindDetailRequestCopyWithImpl<$Res>;
  @override
  $Res call({String categoryCode, int pageNo});
}

/// @nodoc
class __$KindDetailRequestCopyWithImpl<$Res>
    extends _$KindDetailRequestCopyWithImpl<$Res>
    implements _$KindDetailRequestCopyWith<$Res> {
  __$KindDetailRequestCopyWithImpl(
      _KindDetailRequest _value, $Res Function(_KindDetailRequest) _then)
      : super(_value, (v) => _then(v as _KindDetailRequest));

  @override
  _KindDetailRequest get _value => super._value as _KindDetailRequest;

  @override
  $Res call({
    Object? categoryCode = freezed,
    Object? pageNo = freezed,
  }) {
    return _then(_KindDetailRequest(
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
class _$_KindDetailRequest implements _KindDetailRequest {
  const _$_KindDetailRequest(
      {required this.categoryCode, required this.pageNo});

  factory _$_KindDetailRequest.fromJson(Map<String, dynamic> json) =>
      _$$_KindDetailRequestFromJson(json);

  @override
  final String categoryCode;
  @override
  final int pageNo;

  @override
  String toString() {
    return 'KindDetailRequest(categoryCode: $categoryCode, pageNo: $pageNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KindDetailRequest &&
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
  _$KindDetailRequestCopyWith<_KindDetailRequest> get copyWith =>
      __$KindDetailRequestCopyWithImpl<_KindDetailRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KindDetailRequestToJson(this);
  }
}

abstract class _KindDetailRequest implements KindDetailRequest {
  const factory _KindDetailRequest(
      {required String categoryCode,
      required int pageNo}) = _$_KindDetailRequest;

  factory _KindDetailRequest.fromJson(Map<String, dynamic> json) =
      _$_KindDetailRequest.fromJson;

  @override
  String get categoryCode;
  @override
  int get pageNo;
  @override
  @JsonKey(ignore: true)
  _$KindDetailRequestCopyWith<_KindDetailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
