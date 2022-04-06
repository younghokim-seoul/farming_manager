

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dstr_prevnt_list_request.freezed.dart';
part 'dstr_prevnt_list_request.g.dart';


@freezed
class DstrPrevntListRequest with _$DstrPrevntListRequest{
  const factory DstrPrevntListRequest({
     required int pageNo
  }) = _DstrPrevntListRequest;

  factory DstrPrevntListRequest.fromJson(Map<String, dynamic> json) => _$DstrPrevntListRequestFromJson(json);
}