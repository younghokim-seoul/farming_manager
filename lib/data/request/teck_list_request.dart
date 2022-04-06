

import 'package:freezed_annotation/freezed_annotation.dart';

part 'teck_list_request.freezed.dart';
part 'teck_list_request.g.dart';


@freezed
class TeckListRequest with _$TeckListRequest{
  const factory TeckListRequest({
     required int pageNo
  }) = _TeckListRequest;

  factory TeckListRequest.fromJson(Map<String, dynamic> json) => _$TeckListRequestFromJson(json);
}