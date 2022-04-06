

import 'package:freezed_annotation/freezed_annotation.dart';

part 'teck_detail_request.freezed.dart';
part 'teck_detail_request.g.dart';


@freezed
class TeckDetailRequest with _$TeckDetailRequest{
  const factory TeckDetailRequest({
     required String cntntsNo
  }) = _TeckDetailRequest;

  factory TeckDetailRequest.fromJson(Map<String, dynamic> json) => _$TeckDetailRequestFromJson(json);
}