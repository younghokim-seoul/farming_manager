import 'package:freezed_annotation/freezed_annotation.dart';

part 'vedio_list_response.freezed.dart';
part 'vedio_list_response.g.dart';

@freezed
class VedioListResponse with _$VedioListResponse {
  const factory VedioListResponse({
    required String videoTitle,
    required String videoLink,
    required String videoImg,
  }) = _VedioListResponse;

  factory VedioListResponse.fromJson(Map<String, dynamic> json) =>
      _$VedioListResponseFromJson(json);
}
