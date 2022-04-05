import 'package:freezed_annotation/freezed_annotation.dart';

part 'menual_list_request.freezed.dart';
part 'menual_list_request.g.dart';

@freezed
class MenualListRequest with _$MenualListRequest {
  const factory MenualListRequest({
    required String kidofcomdtySeCode,
  }) = _MenualListRequest;

  factory MenualListRequest.fromJson(Map<String, dynamic> json) =>
      _$MenualListRequestFromJson(json);
}
