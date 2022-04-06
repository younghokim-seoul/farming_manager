// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vedio_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VedioListResponse _$VedioListResponseFromJson(Map<String, dynamic> json) {
  return _VedioListResponse.fromJson(json);
}

/// @nodoc
class _$VedioListResponseTearOff {
  const _$VedioListResponseTearOff();

  _VedioListResponse call(
      {required String videoTitle,
      required String videoLink,
      required String videoImg}) {
    return _VedioListResponse(
      videoTitle: videoTitle,
      videoLink: videoLink,
      videoImg: videoImg,
    );
  }

  VedioListResponse fromJson(Map<String, Object?> json) {
    return VedioListResponse.fromJson(json);
  }
}

/// @nodoc
const $VedioListResponse = _$VedioListResponseTearOff();

/// @nodoc
mixin _$VedioListResponse {
  String get videoTitle => throw _privateConstructorUsedError;
  String get videoLink => throw _privateConstructorUsedError;
  String get videoImg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VedioListResponseCopyWith<VedioListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VedioListResponseCopyWith<$Res> {
  factory $VedioListResponseCopyWith(
          VedioListResponse value, $Res Function(VedioListResponse) then) =
      _$VedioListResponseCopyWithImpl<$Res>;
  $Res call({String videoTitle, String videoLink, String videoImg});
}

/// @nodoc
class _$VedioListResponseCopyWithImpl<$Res>
    implements $VedioListResponseCopyWith<$Res> {
  _$VedioListResponseCopyWithImpl(this._value, this._then);

  final VedioListResponse _value;
  // ignore: unused_field
  final $Res Function(VedioListResponse) _then;

  @override
  $Res call({
    Object? videoTitle = freezed,
    Object? videoLink = freezed,
    Object? videoImg = freezed,
  }) {
    return _then(_value.copyWith(
      videoTitle: videoTitle == freezed
          ? _value.videoTitle
          : videoTitle // ignore: cast_nullable_to_non_nullable
              as String,
      videoLink: videoLink == freezed
          ? _value.videoLink
          : videoLink // ignore: cast_nullable_to_non_nullable
              as String,
      videoImg: videoImg == freezed
          ? _value.videoImg
          : videoImg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$VedioListResponseCopyWith<$Res>
    implements $VedioListResponseCopyWith<$Res> {
  factory _$VedioListResponseCopyWith(
          _VedioListResponse value, $Res Function(_VedioListResponse) then) =
      __$VedioListResponseCopyWithImpl<$Res>;
  @override
  $Res call({String videoTitle, String videoLink, String videoImg});
}

/// @nodoc
class __$VedioListResponseCopyWithImpl<$Res>
    extends _$VedioListResponseCopyWithImpl<$Res>
    implements _$VedioListResponseCopyWith<$Res> {
  __$VedioListResponseCopyWithImpl(
      _VedioListResponse _value, $Res Function(_VedioListResponse) _then)
      : super(_value, (v) => _then(v as _VedioListResponse));

  @override
  _VedioListResponse get _value => super._value as _VedioListResponse;

  @override
  $Res call({
    Object? videoTitle = freezed,
    Object? videoLink = freezed,
    Object? videoImg = freezed,
  }) {
    return _then(_VedioListResponse(
      videoTitle: videoTitle == freezed
          ? _value.videoTitle
          : videoTitle // ignore: cast_nullable_to_non_nullable
              as String,
      videoLink: videoLink == freezed
          ? _value.videoLink
          : videoLink // ignore: cast_nullable_to_non_nullable
              as String,
      videoImg: videoImg == freezed
          ? _value.videoImg
          : videoImg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VedioListResponse implements _VedioListResponse {
  const _$_VedioListResponse(
      {required this.videoTitle,
      required this.videoLink,
      required this.videoImg});

  factory _$_VedioListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_VedioListResponseFromJson(json);

  @override
  final String videoTitle;
  @override
  final String videoLink;
  @override
  final String videoImg;

  @override
  String toString() {
    return 'VedioListResponse(videoTitle: $videoTitle, videoLink: $videoLink, videoImg: $videoImg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VedioListResponse &&
            const DeepCollectionEquality()
                .equals(other.videoTitle, videoTitle) &&
            const DeepCollectionEquality().equals(other.videoLink, videoLink) &&
            const DeepCollectionEquality().equals(other.videoImg, videoImg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(videoTitle),
      const DeepCollectionEquality().hash(videoLink),
      const DeepCollectionEquality().hash(videoImg));

  @JsonKey(ignore: true)
  @override
  _$VedioListResponseCopyWith<_VedioListResponse> get copyWith =>
      __$VedioListResponseCopyWithImpl<_VedioListResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VedioListResponseToJson(this);
  }
}

abstract class _VedioListResponse implements VedioListResponse {
  const factory _VedioListResponse(
      {required String videoTitle,
      required String videoLink,
      required String videoImg}) = _$_VedioListResponse;

  factory _VedioListResponse.fromJson(Map<String, dynamic> json) =
      _$_VedioListResponse.fromJson;

  @override
  String get videoTitle;
  @override
  String get videoLink;
  @override
  String get videoImg;
  @override
  @JsonKey(ignore: true)
  _$VedioListResponseCopyWith<_VedioListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
