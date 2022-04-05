import 'package:freezed_annotation/freezed_annotation.dart';

part 'menual_category_response.freezed.dart';
part 'menual_category_response.g.dart';

@freezed
class MenualCategoryResponse with _$MenualCategoryResponse {
  const factory MenualCategoryResponse({
    required String kidofcomdtySeCode,
    required String codeNm,
  }) = _MenualCategoryResponse;

  factory MenualCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$MenualCategoryResponseFromJson(json);
}
