

import 'package:freezed_annotation/freezed_annotation.dart';

part 'memo_delete_request.freezed.dart';
part 'memo_delete_request.g.dart';


@freezed
class MemoDeleteRequest with _$MemoDeleteRequest{
  const factory MemoDeleteRequest({
     required int memoNo
  }) = _MemoDeleteRequest;

  factory MemoDeleteRequest.fromJson(Map<String, dynamic> json) => _$MemoDeleteRequestFromJson(json);
}