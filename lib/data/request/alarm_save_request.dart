import 'package:freezed_annotation/freezed_annotation.dart';

part 'alarm_save_request.freezed.dart';

part 'alarm_save_request.g.dart';

@freezed
class AlarmSaveRequest with _$AlarmSaveRequest {
  const factory AlarmSaveRequest({
    required String token,
    required String title,
    required String content,
    required String sendDate,
    required String sendTime,
  }) = _AlarmSaveRequest;

  factory AlarmSaveRequest.fromJson(Map<String, dynamic> json) =>
      _$AlarmSaveRequestFromJson(json);
}
