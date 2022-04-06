import 'package:freezed_annotation/freezed_annotation.dart';

part 'teck_response.freezed.dart';
part 'teck_response.g.dart';

@freezed
class TeckResponse with _$TeckResponse {
  const factory TeckResponse({
    required String cntntsNo,
    required String cntntsSj,
    required String regDt,
    required String rdcnt
  }) = _TeckResponse;

  factory TeckResponse.fromJson(Map<String, dynamic> json) =>
      _$TeckResponseFromJson(json);
}
