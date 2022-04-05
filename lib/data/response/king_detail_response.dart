import 'package:freezed_annotation/freezed_annotation.dart';

part 'king_detail_response.freezed.dart';
part 'king_detail_response.g.dart';

@freezed
class KindDetailResponse with _$KindDetailResponse {
  const factory KindDetailResponse({
    required String cntntsSj,
    required String? imgFileLink,
    required String? mainChartrInfo,
  }) = _KindDetailResponse;

  factory KindDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$KindDetailResponseFromJson(json);
}
