// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'memo_save_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemoSaveRequest _$MemoSaveRequestFromJson(Map<String, dynamic> json) {
  return _MemoSaveRequest.fromJson(json);
}

/// @nodoc
class _$MemoSaveRequestTearOff {
  const _$MemoSaveRequestTearOff();

  _MemoSaveRequest call(
      {required int wYear,
      required int wMonth,
      required int wDay,
      required String title,
      required String content}) {
    return _MemoSaveRequest(
      wYear: wYear,
      wMonth: wMonth,
      wDay: wDay,
      title: title,
      content: content,
    );
  }

  MemoSaveRequest fromJson(Map<String, Object?> json) {
    return MemoSaveRequest.fromJson(json);
  }
}

/// @nodoc
const $MemoSaveRequest = _$MemoSaveRequestTearOff();

/// @nodoc
mixin _$MemoSaveRequest {
  int get wYear => throw _privateConstructorUsedError;
  int get wMonth => throw _privateConstructorUsedError;
  int get wDay => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemoSaveRequestCopyWith<MemoSaveRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoSaveRequestCopyWith<$Res> {
  factory $MemoSaveRequestCopyWith(
          MemoSaveRequest value, $Res Function(MemoSaveRequest) then) =
      _$MemoSaveRequestCopyWithImpl<$Res>;
  $Res call({int wYear, int wMonth, int wDay, String title, String content});
}

/// @nodoc
class _$MemoSaveRequestCopyWithImpl<$Res>
    implements $MemoSaveRequestCopyWith<$Res> {
  _$MemoSaveRequestCopyWithImpl(this._value, this._then);

  final MemoSaveRequest _value;
  // ignore: unused_field
  final $Res Function(MemoSaveRequest) _then;

  @override
  $Res call({
    Object? wYear = freezed,
    Object? wMonth = freezed,
    Object? wDay = freezed,
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      wYear: wYear == freezed
          ? _value.wYear
          : wYear // ignore: cast_nullable_to_non_nullable
              as int,
      wMonth: wMonth == freezed
          ? _value.wMonth
          : wMonth // ignore: cast_nullable_to_non_nullable
              as int,
      wDay: wDay == freezed
          ? _value.wDay
          : wDay // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MemoSaveRequestCopyWith<$Res>
    implements $MemoSaveRequestCopyWith<$Res> {
  factory _$MemoSaveRequestCopyWith(
          _MemoSaveRequest value, $Res Function(_MemoSaveRequest) then) =
      __$MemoSaveRequestCopyWithImpl<$Res>;
  @override
  $Res call({int wYear, int wMonth, int wDay, String title, String content});
}

/// @nodoc
class __$MemoSaveRequestCopyWithImpl<$Res>
    extends _$MemoSaveRequestCopyWithImpl<$Res>
    implements _$MemoSaveRequestCopyWith<$Res> {
  __$MemoSaveRequestCopyWithImpl(
      _MemoSaveRequest _value, $Res Function(_MemoSaveRequest) _then)
      : super(_value, (v) => _then(v as _MemoSaveRequest));

  @override
  _MemoSaveRequest get _value => super._value as _MemoSaveRequest;

  @override
  $Res call({
    Object? wYear = freezed,
    Object? wMonth = freezed,
    Object? wDay = freezed,
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_MemoSaveRequest(
      wYear: wYear == freezed
          ? _value.wYear
          : wYear // ignore: cast_nullable_to_non_nullable
              as int,
      wMonth: wMonth == freezed
          ? _value.wMonth
          : wMonth // ignore: cast_nullable_to_non_nullable
              as int,
      wDay: wDay == freezed
          ? _value.wDay
          : wDay // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemoSaveRequest implements _MemoSaveRequest {
  const _$_MemoSaveRequest(
      {required this.wYear,
      required this.wMonth,
      required this.wDay,
      required this.title,
      required this.content});

  factory _$_MemoSaveRequest.fromJson(Map<String, dynamic> json) =>
      _$$_MemoSaveRequestFromJson(json);

  @override
  final int wYear;
  @override
  final int wMonth;
  @override
  final int wDay;
  @override
  final String title;
  @override
  final String content;

  @override
  String toString() {
    return 'MemoSaveRequest(wYear: $wYear, wMonth: $wMonth, wDay: $wDay, title: $title, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MemoSaveRequest &&
            const DeepCollectionEquality().equals(other.wYear, wYear) &&
            const DeepCollectionEquality().equals(other.wMonth, wMonth) &&
            const DeepCollectionEquality().equals(other.wDay, wDay) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(wYear),
      const DeepCollectionEquality().hash(wMonth),
      const DeepCollectionEquality().hash(wDay),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$MemoSaveRequestCopyWith<_MemoSaveRequest> get copyWith =>
      __$MemoSaveRequestCopyWithImpl<_MemoSaveRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemoSaveRequestToJson(this);
  }
}

abstract class _MemoSaveRequest implements MemoSaveRequest {
  const factory _MemoSaveRequest(
      {required int wYear,
      required int wMonth,
      required int wDay,
      required String title,
      required String content}) = _$_MemoSaveRequest;

  factory _MemoSaveRequest.fromJson(Map<String, dynamic> json) =
      _$_MemoSaveRequest.fromJson;

  @override
  int get wYear;
  @override
  int get wMonth;
  @override
  int get wDay;
  @override
  String get title;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$MemoSaveRequestCopyWith<_MemoSaveRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
