// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memo_save_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemoSaveRequest _$$_MemoSaveRequestFromJson(Map<String, dynamic> json) =>
    _$_MemoSaveRequest(
      wYear: json['wYear'] as int,
      wMonth: json['wMonth'] as int,
      wDay: json['wDay'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$_MemoSaveRequestToJson(_$_MemoSaveRequest instance) =>
    <String, dynamic>{
      'wYear': instance.wYear,
      'wMonth': instance.wMonth,
      'wDay': instance.wDay,
      'title': instance.title,
      'content': instance.content,
    };
