import 'package:freezed_annotation/freezed_annotation.dart';

part 'dstr_prevnt_list_response.freezed.dart';
part 'dstr_prevnt_list_response.g.dart';

@freezed
class DstrPrevntListResponse with _$DstrPrevntListResponse {
  const factory DstrPrevntListResponse({
    required String rtnFileSn,
    required String cntntsSj,
    required String downUrl,
  }) = _DstrPrevntListResponse;

  factory DstrPrevntListResponse.fromJson(Map<String, dynamic> json) =>
      _$DstrPrevntListResponseFromJson(json);
}
