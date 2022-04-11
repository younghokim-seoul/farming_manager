import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_response.freezed.dart';
part 'single_response.g.dart';

@freezed
class SingleResponse with _$SingleResponse{
  const factory SingleResponse({
    required String result,
  }) = _SingleResponse;

  factory SingleResponse.fromJson(Map<String, dynamic> json) =>
      _$SingleResponseFromJson(json);
}
