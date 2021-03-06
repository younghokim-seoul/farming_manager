
import 'package:farming_manager/data/repository/farming_repository.dart';
import 'package:farming_manager/data/repository/farming_repository_remote.dart';
import 'package:farming_manager/utils/file_download_manager.dart';
import 'package:farming_manager/utils/local_preference_manager.dart';
import 'package:get_it/get_it.dart';


final locator = GetIt.instance;


void setupAppModule(){
  _createAppModule(locator);
}

void _createAppModule(GetIt locator){
    locator.registerSingleton<FarmingRepository>(FarmingRepositoryImpl());
    locator.registerFactory<FileDownLoadManager>(() => FileDownLoadManager());
}

