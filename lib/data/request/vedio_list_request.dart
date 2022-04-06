

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vedio_list_request.freezed.dart';
part 'vedio_list_request.g.dart';


@freezed
class VedioListRequest with _$VedioListRequest{
  const factory VedioListRequest({
     required String categoryCode,
     required int pageNo,
  }) = _VedioListRequest;

  factory VedioListRequest.fromJson(Map<String, dynamic> json) => _$VedioListRequestFromJson(json);
}