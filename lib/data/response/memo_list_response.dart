import 'package:freezed_annotation/freezed_annotation.dart';

part 'memo_list_response.freezed.dart';
part 'memo_list_response.g.dart';

@freezed
class MemoListResponse with _$MemoListResponse {
  const factory MemoListResponse({
    required int memoNo,
    required int wYear,
    required int wMonth,
    required int wDay,
    required String fDate,
    required String title,
    required String content,
  }) = _MemoListResponse;

  factory MemoListResponse.fromJson(Map<String, dynamic> json) =>
      _$MemoListResponseFromJson(json);
}
