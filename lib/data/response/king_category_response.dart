import 'package:freezed_annotation/freezed_annotation.dart';

part 'king_category_response.freezed.dart';
part 'king_category_response.g.dart';

@freezed
class KindCategoryResponse with _$KindCategoryResponse {
  const factory KindCategoryResponse({
    required String categoryCode,
    required String categoryNm,
  }) = _KindCategoryResponse;

  factory KindCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$KindCategoryResponseFromJson(json);
}
