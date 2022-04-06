import 'package:freezed_annotation/freezed_annotation.dart';

part 'teck_detail_response.freezed.dart';
part 'teck_detail_response.g.dart';

@freezed
class TeckDetailResponse with _$TeckDetailResponse {
  const factory TeckDetailResponse({
    required String cntntsSj,
    required String questDtl,
    required String answerDtl,
  }) = _TeckDetailResponse;

  factory TeckDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$TeckDetailResponseFromJson(json);
}
