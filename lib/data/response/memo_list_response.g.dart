// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memo_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemoListResponse _$$_MemoListResponseFromJson(Map<String, dynamic> json) =>
    _$_MemoListResponse(
      memoNo: json['memoNo'] as int,
      wYear: json['wYear'] as int,
      wMonth: json['wMonth'] as int,
      wDay: json['wDay'] as int,
      fDate: json['fDate'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$_MemoListResponseToJson(_$_MemoListResponse instance) =>
    <String, dynamic>{
      'memoNo': instance.memoNo,
      'wYear': instance.wYear,
      'wMonth': instance.wMonth,
      'wDay': instance.wDay,
      'fDate': instance.fDate,
      'title': instance.title,
      'content': instance.content,
    };
