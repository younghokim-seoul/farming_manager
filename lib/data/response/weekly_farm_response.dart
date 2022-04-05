import 'package:freezed_annotation/freezed_annotation.dart';

part 'weekly_farm_response.freezed.dart';
part 'weekly_farm_response.g.dart';

@freezed
class WeeklyFarmResponse with _$WeeklyFarmResponse {
  const factory WeeklyFarmResponse({
    required String fileName,
    required String downUrl,
  }) = _WeeklyFarmResponse;

  factory WeeklyFarmResponse.fromJson(Map<String, dynamic> json) =>
      _$WeeklyFarmResponseFromJson(json);
}
