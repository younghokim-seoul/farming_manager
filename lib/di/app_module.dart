
import 'package:farming_manager/data/repository/farming_repository.dart';
import 'package:farming_manager/data/repository/farming_repository_remote.dart';
import 'package:get_it/get_it.dart';


final locator = GetIt.instance;


void setupAppModule(){
  _createAppModule(locator);
}

void _createAppModule(GetIt locator){
    locator.registerSingleton<FarmingRepository>(FarmingRepositoryImpl());
}

