import 'package:freezed_annotation/freezed_annotation.dart';

part 'menual_list_response.freezed.dart';
part 'menual_list_response.g.dart';

@freezed
class MenualListResponse with _$MenualListResponse {
  const factory MenualListResponse({
    required String sj,
    required String fileDownUrlInfo,
  }) = _MenualListResponse;

  factory MenualListResponse.fromJson(Map<String, dynamic> json) =>
      _$MenualListResponseFromJson(json);
}
