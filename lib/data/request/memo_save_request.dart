import 'package:freezed_annotation/freezed_annotation.dart';

part 'memo_save_request.freezed.dart';

part 'memo_save_request.g.dart';

@freezed
class MemoSaveRequest with _$MemoSaveRequest {
  const factory MemoSaveRequest({
    required int wYear,
    required int wMonth,
    required int wDay,
    required String title,
    required String content,
  }) = _MemoSaveRequest;

  factory MemoSaveRequest.fromJson(Map<String, dynamic> json) =>
      _$MemoSaveRequestFromJson(json);
}
