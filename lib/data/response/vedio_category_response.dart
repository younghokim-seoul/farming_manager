import 'package:freezed_annotation/freezed_annotation.dart';

part 'vedio_category_response.freezed.dart';
part 'vedio_category_response.g.dart';

@freezed
class VedioCategoryResponse with _$VedioCategoryResponse{
  const factory VedioCategoryResponse({
    required String categoryCode,
    required String categoryNm,
  }) = _VedioCategoryResponse;

  factory VedioCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$VedioCategoryResponseFromJson(json);
}
