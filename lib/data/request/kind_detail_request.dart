import 'package:freezed_annotation/freezed_annotation.dart';

part 'kind_detail_request.freezed.dart';
part 'kind_detail_request.g.dart';

@freezed
class KindDetailRequest with _$KindDetailRequest {
  const factory KindDetailRequest({
    required String categoryCode,
    required int pageNo
  }) = _KindDetailRequest;

  factory KindDetailRequest.fromJson(Map<String, dynamic> json) => _$KindDetailRequestFromJson(json);
}
