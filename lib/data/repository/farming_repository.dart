import 'package:farming_manager/data/network/state/result.dart';
import 'package:farming_manager/data/repository/base_repository.dart';
import 'package:farming_manager/data/request/dstr_prevnt_list_request.dart';
import 'package:farming_manager/data/request/kind_detail_request.dart';
import 'package:farming_manager/data/request/menual_list_request.dart';
import 'package:farming_manager/data/request/teck_detail_request.dart';
import 'package:farming_manager/data/request/teck_list_request.dart';
import 'package:farming_manager/data/request/vedio_list_request.dart';
import 'package:farming_manager/data/request/weather_request.dart';
import 'package:farming_manager/data/response/dstr_prevnt_list_response.dart';
import 'package:farming_manager/data/response/king_category_response.dart';
import 'package:farming_manager/data/response/king_detail_response.dart';
import 'package:farming_manager/data/response/menual_category_response.dart';
import 'package:farming_manager/data/response/menual_list_response.dart';
import 'package:farming_manager/data/response/teck_detail_response.dart';
import 'package:farming_manager/data/response/teck_response.dart';
import 'package:farming_manager/data/response/vedio_category_response.dart';
import 'package:farming_manager/data/response/vedio_list_response.dart';
import 'package:farming_manager/data/response/weather_response.dart';
import 'package:farming_manager/data/response/weekly_farm_response.dart';

abstract class FarmingRepository extends BaseRepository {
  Future<Result<WeatherResponse>> getWeatherInfo(WeatherRequest request);
  Future<Result<List<KindCategoryResponse>>> getKindCategory();
  Future<Result<List<KindDetailResponse>>> getKindDetail(KindDetailRequest request);
  Future<Result<List<MenualCategoryResponse>>> getMenualCategory();
  Future<Result<List<MenualListResponse>>> getMenualList(MenualListRequest request);
  Future<Result<List<WeeklyFarmResponse>>> getWeekFarmList();
  Future<Result<List<DstrPrevntListResponse>>> getDstrPrevntList( DstrPrevntListRequest request);
  Future<Result<List<TeckResponse>>> getTeckList(TeckListRequest request);
  Future<Result<TeckDetailResponse>> getTeckDetail(TeckDetailRequest request);
  Future<Result<List<VedioCategoryResponse>>> getVideoCategory();
  Future<Result<List<VedioListResponse>>> getVideoList(VedioListRequest request);
}