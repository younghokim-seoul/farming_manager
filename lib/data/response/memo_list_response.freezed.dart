// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'memo_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemoListResponse _$MemoListResponseFromJson(Map<String, dynamic> json) {
  return _MemoListResponse.fromJson(json);
}

/// @nodoc
class _$MemoListResponseTearOff {
  const _$MemoListResponseTearOff();

  _MemoListResponse call(
      {required int memoNo,
      required int wYear,
      required int wMonth,
      required int wDay,
      required String fDate,
      required String title,
      required String content}) {
    return _MemoListResponse(
      memoNo: memoNo,
      wYear: wYear,
      wMonth: wMonth,
      wDay: wDay,
      fDate: fDate,
      title: title,
      content: content,
    );
  }

  MemoListResponse fromJson(Map<String, Object?> json) {
    return MemoListResponse.fromJson(json);
  }
}

/// @nodoc
const $MemoListResponse = _$MemoListResponseTearOff();

/// @nodoc
mixin _$MemoListResponse {
  int get memoNo => throw _privateConstructorUsedError;
  int get wYear => throw _privateConstructorUsedError;
  int get wMonth => throw _privateConstructorUsedError;
  int get wDay => throw _privateConstructorUsedError;
  String get fDate => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemoListResponseCopyWith<MemoListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoListResponseCopyWith<$Res> {
  factory $MemoListResponseCopyWith(
          MemoListResponse value, $Res Function(MemoListResponse) then) =
      _$MemoListResponseCopyWithImpl<$Res>;
  $Res call(
      {int memoNo,
      int wYear,
      int wMonth,
      int wDay,
      String fDate,
      String title,
      String content});
}

/// @nodoc
class _$MemoListResponseCopyWithImpl<$Res>
    implements $MemoListResponseCopyWith<$Res> {
  _$MemoListResponseCopyWithImpl(this._value, this._then);

  final MemoListResponse _value;
  // ignore: unused_field
  final $Res Function(MemoListResponse) _then;

  @override
  $Res call({
    Object? memoNo = freezed,
    Object? wYear = freezed,
    Object? wMonth = freezed,
    Object? wDay = freezed,
    Object? fDate = freezed,
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      memoNo: memoNo == freezed
          ? _value.memoNo
          : memoNo // ignore: cast_nullable_to_non_nullable
              as int,
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
      fDate: fDate == freezed
          ? _value.fDate
          : fDate // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$MemoListResponseCopyWith<$Res>
    implements $MemoListResponseCopyWith<$Res> {
  factory _$MemoListResponseCopyWith(
          _MemoListResponse value, $Res Function(_MemoListResponse) then) =
      __$MemoListResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int memoNo,
      int wYear,
      int wMonth,
      int wDay,
      String fDate,
      String title,
      String content});
}

/// @nodoc
class __$MemoListResponseCopyWithImpl<$Res>
    extends _$MemoListResponseCopyWithImpl<$Res>
    implements _$MemoListResponseCopyWith<$Res> {
  __$MemoListResponseCopyWithImpl(
      _MemoListResponse _value, $Res Function(_MemoListResponse) _then)
      : super(_value, (v) => _then(v as _MemoListResponse));

  @override
  _MemoListResponse get _value => super._value as _MemoListResponse;

  @override
  $Res call({
    Object? memoNo = freezed,
    Object? wYear = freezed,
    Object? wMonth = freezed,
    Object? wDay = freezed,
    Object? fDate = freezed,
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_MemoListResponse(
      memoNo: memoNo == freezed
          ? _value.memoNo
          : memoNo // ignore: cast_nullable_to_non_nullable
              as int,
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
      fDate: fDate == freezed
          ? _value.fDate
          : fDate // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_MemoListResponse implements _MemoListResponse {
  const _$_MemoListResponse(
      {required this.memoNo,
      required this.wYear,
      required this.wMonth,
      required this.wDay,
      required this.fDate,
      required this.title,
      required this.content});

  factory _$_MemoListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MemoListResponseFromJson(json);

  @override
  final int memoNo;
  @override
  final int wYear;
  @override
  final int wMonth;
  @override
  final int wDay;
  @override
  final String fDate;
  @override
  final String title;
  @override
  final String content;

  @override
  String toString() {
    return 'MemoListResponse(memoNo: $memoNo, wYear: $wYear, wMonth: $wMonth, wDay: $wDay, fDate: $fDate, title: $title, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MemoListResponse &&
            const DeepCollectionEquality().equals(other.memoNo, memoNo) &&
            const DeepCollectionEquality().equals(other.wYear, wYear) &&
            const DeepCollectionEquality().equals(other.wMonth, wMonth) &&
            const DeepCollectionEquality().equals(other.wDay, wDay) &&
            const DeepCollectionEquality().equals(other.fDate, fDate) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(memoNo),
      const DeepCollectionEquality().hash(wYear),
      const DeepCollectionEquality().hash(wMonth),
      const DeepCollectionEquality().hash(wDay),
      const DeepCollectionEquality().hash(fDate),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$MemoListResponseCopyWith<_MemoListResponse> get copyWith =>
      __$MemoListResponseCopyWithImpl<_MemoListResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemoListResponseToJson(this);
  }
}

abstract class _MemoListResponse implements MemoListResponse {
  const factory _MemoListResponse(
      {required int memoNo,
      required int wYear,
      required int wMonth,
      required int wDay,
      required String fDate,
      required String title,
      required String content}) = _$_MemoListResponse;

  factory _MemoListResponse.fromJson(Map<String, dynamic> json) =
      _$_MemoListResponse.fromJson;

  @override
  int get memoNo;
  @override
  int get wYear;
  @override
  int get wMonth;
  @override
  int get wDay;
  @override
  String get fDate;
  @override
  String get title;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$MemoListResponseCopyWith<_MemoListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
