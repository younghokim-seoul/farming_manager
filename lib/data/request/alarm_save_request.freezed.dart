// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'alarm_save_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AlarmSaveRequest _$AlarmSaveRequestFromJson(Map<String, dynamic> json) {
  return _AlarmSaveRequest.fromJson(json);
}

/// @nodoc
class _$AlarmSaveRequestTearOff {
  const _$AlarmSaveRequestTearOff();

  _AlarmSaveRequest call(
      {required String token,
      required String title,
      required String content,
      required String sendDate,
      required String sendTime}) {
    return _AlarmSaveRequest(
      token: token,
      title: title,
      content: content,
      sendDate: sendDate,
      sendTime: sendTime,
    );
  }

  AlarmSaveRequest fromJson(Map<String, Object?> json) {
    return AlarmSaveRequest.fromJson(json);
  }
}

/// @nodoc
const $AlarmSaveRequest = _$AlarmSaveRequestTearOff();

/// @nodoc
mixin _$AlarmSaveRequest {
  String get token => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get sendDate => throw _privateConstructorUsedError;
  String get sendTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlarmSaveRequestCopyWith<AlarmSaveRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmSaveRequestCopyWith<$Res> {
  factory $AlarmSaveRequestCopyWith(
          AlarmSaveRequest value, $Res Function(AlarmSaveRequest) then) =
      _$AlarmSaveRequestCopyWithImpl<$Res>;
  $Res call(
      {String token,
      String title,
      String content,
      String sendDate,
      String sendTime});
}

/// @nodoc
class _$AlarmSaveRequestCopyWithImpl<$Res>
    implements $AlarmSaveRequestCopyWith<$Res> {
  _$AlarmSaveRequestCopyWithImpl(this._value, this._then);

  final AlarmSaveRequest _value;
  // ignore: unused_field
  final $Res Function(AlarmSaveRequest) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? sendDate = freezed,
    Object? sendTime = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      sendDate: sendDate == freezed
          ? _value.sendDate
          : sendDate // ignore: cast_nullable_to_non_nullable
              as String,
      sendTime: sendTime == freezed
          ? _value.sendTime
          : sendTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AlarmSaveRequestCopyWith<$Res>
    implements $AlarmSaveRequestCopyWith<$Res> {
  factory _$AlarmSaveRequestCopyWith(
          _AlarmSaveRequest value, $Res Function(_AlarmSaveRequest) then) =
      __$AlarmSaveRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String token,
      String title,
      String content,
      String sendDate,
      String sendTime});
}

/// @nodoc
class __$AlarmSaveRequestCopyWithImpl<$Res>
    extends _$AlarmSaveRequestCopyWithImpl<$Res>
    implements _$AlarmSaveRequestCopyWith<$Res> {
  __$AlarmSaveRequestCopyWithImpl(
      _AlarmSaveRequest _value, $Res Function(_AlarmSaveRequest) _then)
      : super(_value, (v) => _then(v as _AlarmSaveRequest));

  @override
  _AlarmSaveRequest get _value => super._value as _AlarmSaveRequest;

  @override
  $Res call({
    Object? token = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? sendDate = freezed,
    Object? sendTime = freezed,
  }) {
    return _then(_AlarmSaveRequest(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      sendDate: sendDate == freezed
          ? _value.sendDate
          : sendDate // ignore: cast_nullable_to_non_nullable
              as String,
      sendTime: sendTime == freezed
          ? _value.sendTime
          : sendTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AlarmSaveRequest implements _AlarmSaveRequest {
  const _$_AlarmSaveRequest(
      {required this.token,
      required this.title,
      required this.content,
      required this.sendDate,
      required this.sendTime});

  factory _$_AlarmSaveRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AlarmSaveRequestFromJson(json);

  @override
  final String token;
  @override
  final String title;
  @override
  final String content;
  @override
  final String sendDate;
  @override
  final String sendTime;

  @override
  String toString() {
    return 'AlarmSaveRequest(token: $token, title: $title, content: $content, sendDate: $sendDate, sendTime: $sendTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AlarmSaveRequest &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.sendDate, sendDate) &&
            const DeepCollectionEquality().equals(other.sendTime, sendTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(sendDate),
      const DeepCollectionEquality().hash(sendTime));

  @JsonKey(ignore: true)
  @override
  _$AlarmSaveRequestCopyWith<_AlarmSaveRequest> get copyWith =>
      __$AlarmSaveRequestCopyWithImpl<_AlarmSaveRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AlarmSaveRequestToJson(this);
  }
}

abstract class _AlarmSaveRequest implements AlarmSaveRequest {
  const factory _AlarmSaveRequest(
      {required String token,
      required String title,
      required String content,
      required String sendDate,
      required String sendTime}) = _$_AlarmSaveRequest;

  factory _AlarmSaveRequest.fromJson(Map<String, dynamic> json) =
      _$_AlarmSaveRequest.fromJson;

  @override
  String get token;
  @override
  String get title;
  @override
  String get content;
  @override
  String get sendDate;
  @override
  String get sendTime;
  @override
  @JsonKey(ignore: true)
  _$AlarmSaveRequestCopyWith<_AlarmSaveRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
