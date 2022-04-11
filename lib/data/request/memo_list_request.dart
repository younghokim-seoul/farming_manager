import 'package:freezed_annotation/freezed_annotation.dart';

part 'memo_list_request.freezed.dart';
part 'memo_list_request.g.dart';

@freezed
class MemoListRequest with _$MemoListRequest {
  const factory MemoListRequest({
    required int wYear,
    required int wMonth,
  }) = _MemoListRequest;

  factory MemoListRequest.fromJson(Map<String, dynamic> json) =>
      _$MemoListRequestFromJson(json);
}
