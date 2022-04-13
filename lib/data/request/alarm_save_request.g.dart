// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_save_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlarmSaveRequest _$$_AlarmSaveRequestFromJson(Map<String, dynamic> json) =>
    _$_AlarmSaveRequest(
      token: json['token'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      sendDate: json['sendDate'] as String,
      sendTime: json['sendTime'] as String,
    );

Map<String, dynamic> _$$_AlarmSaveRequestToJson(_$_AlarmSaveRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'title': instance.title,
      'content': instance.content,
      'sendDate': instance.sendDate,
      'sendTime': instance.sendTime,
    };
