import 'package:farming_manager/data/network/retrofit_client.dart';
import 'package:farming_manager/data/network/state/result.dart';
import 'package:farming_manager/data/repository/farming_repository.dart';
import 'package:farming_manager/data/request/kind_detail_request.dart';
import 'package:farming_manager/data/request/menual_list_request.dart';
import 'package:farming_manager/data/request/weather_request.dart';
import 'package:farming_manager/data/response/king_category_response.dart';
import 'package:farming_manager/data/response/king_detail_response.dart';
import 'package:farming_manager/data/response/menual_category_response.dart';
import 'package:farming_manager/data/response/menual_list_response.dart';
import 'package:farming_manager/data/response/weather_response.dart';
import 'package:farming_manager/data/response/weekly_farm_response.dart';

class FarmingRepositoryImpl extends FarmingRepository {
  RetrofitClient get _retrofitClient => RetrofitClient(dio, baseUrl: endpoint);


  @override
  Future<Result<WeatherResponse>> getWeatherInfo(WeatherRequest request) async => safeCall(_retrofitClient.getWeatherInfo(request));

  @override
  Future<Result<List<KindCategoryResponse>>> getKindCategory() async => safeCall(_retrofitClient.getKindCategory());

  @override
  Future<Result<List<KindDetailResponse>>> getKindDetail(KindDetailRequest request)  async => safeCall(_retrofitClient.getKindDetail(request));

  @override
  Future<Result<List<MenualCategoryResponse>>> getMenualCategory() async => safeCall(_retrofitClient.getMenualCategory());

  @override
  Future<Result<List<MenualListResponse>>> getMenualList(MenualListRequest request) async => safeCall(_retrofitClient.getMenualList(request));

  @override
  Future<Result<List<WeeklyFarmResponse>>> getWeekFarmList() async => safeCall(_retrofitClient.getWeekFarmList());
}
