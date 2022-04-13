import 'package:farming_manager/data/network/retrofit_client.dart';
import 'package:farming_manager/data/network/state/result.dart';
import 'package:farming_manager/data/repository/farming_repository.dart';
import 'package:farming_manager/data/request/alarm_save_request.dart';
import 'package:farming_manager/data/request/dstr_prevnt_list_request.dart';
import 'package:farming_manager/data/request/kind_detail_request.dart';
import 'package:farming_manager/data/request/memo_delete_request.dart';
import 'package:farming_manager/data/request/memo_list_request.dart';
import 'package:farming_manager/data/request/memo_save_request.dart';
import 'package:farming_manager/data/request/menual_list_request.dart';
import 'package:farming_manager/data/request/teck_detail_request.dart';
import 'package:farming_manager/data/request/teck_list_request.dart';
import 'package:farming_manager/data/request/vedio_list_request.dart';
import 'package:farming_manager/data/request/weather_request.dart';
import 'package:farming_manager/data/response/dstr_prevnt_list_response.dart';
import 'package:farming_manager/data/response/king_category_response.dart';
import 'package:farming_manager/data/response/king_detail_response.dart';
import 'package:farming_manager/data/response/memo_list_response.dart';
import 'package:farming_manager/data/response/menual_category_response.dart';
import 'package:farming_manager/data/response/menual_list_response.dart';
import 'package:farming_manager/data/response/single_response.dart';
import 'package:farming_manager/data/response/teck_detail_response.dart';
import 'package:farming_manager/data/response/teck_response.dart';
import 'package:farming_manager/data/response/vedio_category_response.dart';
import 'package:farming_manager/data/response/vedio_list_response.dart';
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

  @override
  Future<Result<List<TeckDetailResponse>>> getTeckDetail(TeckDetailRequest request) async => safeCall(_retrofitClient.getTeckDetail(request));

  @override
  Future<Result<List<TeckResponse>>> getTeckList(TeckListRequest request) async => safeCall(_retrofitClient.getTeckList(request));

  @override
  Future<Result<List<VedioCategoryResponse>>> getVideoCategory() async => safeCall(_retrofitClient.getVideoCategory());

  @override
  Future<Result<List<VedioListResponse>>> getVideoList(VedioListRequest request) async => safeCall(_retrofitClient.getVideoList(request));

  @override
  Future<Result<List<DstrPrevntListResponse>>> getDstrPrevntList(DstrPrevntListRequest request)  async => safeCall(_retrofitClient.getDstrPrevntList(request));

  @override
  Future<Result<SingleResponse>> deleteMemo(MemoDeleteRequest request) async => safeCall(_retrofitClient.deleteMemo(request));

  @override
  Future<Result<List<MemoListResponse>>> getMemoList(MemoListRequest request)  async => safeCall(_retrofitClient.getMemoList(request));

  @override
  Future<Result<SingleResponse>> saveMemo(MemoSaveRequest request)  async => safeCall(_retrofitClient.saveMemo(request));

  @override
  Future<Result<SingleResponse>> insertAlerm(AlarmSaveRequest request)  async => safeCall(_retrofitClient.insertAlerm(request));
}
