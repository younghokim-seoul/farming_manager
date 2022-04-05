import 'dart:io';
import 'dart:isolate';
import 'dart:ui';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:farming_manager/data/repository/farming_repository.dart';
import 'package:farming_manager/data/request/menual_list_request.dart';
import 'package:farming_manager/data/response/menual_category_response.dart';
import 'package:farming_manager/data/response/menual_list_response.dart';
import 'package:farming_manager/di/app_module.dart';
import 'package:farming_manager/main.dart';
import 'package:farming_manager/widgets/toast.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:permission_handler/permission_handler.dart';

class ManualViewModel extends GetxController {
  final repository = locator.get<FarmingRepository>();

  var loading = true.obs;

  final _categoryList = <MenualCategoryResponse>[].obs;

  List<MenualCategoryResponse> get categoryList => _categoryList;

  final _categoryQueryList = <MenualListResponse>[].obs;

  List<MenualListResponse> get categoryQueryList => _categoryQueryList;

  final ReceivePort _port = ReceivePort();

  @override
  void onInit() {
    logger.i(":::::::::ManualViewModel onInit");
    _bindBackgroundIsolate();
    _fetchMenualCategory();
    FlutterDownloader.registerCallback(downloadCallback);
    super.onInit();
  }

  void requestDownload(MenualListResponse task) async {
    final _permissionReady = await _checkPermission();
    logger.i("_permissionReady " + _permissionReady.toString());
    if (_permissionReady) {
      final _localpath = await _prepareSaveDir();

      logger.i(_localpath);

      final taskId = await FlutterDownloader.enqueue(
        url: task.fileDownUrlInfo,
        fileName: task.sj +".hwp",
        savedDir: _localpath,
        showNotification: true,
        openFileFromNotification: true,
        saveInPublicStorage: true, //파일저장을 공개적으로 할것인지
      );
      logger.i(taskId);
    }
  }

  Future<String> _prepareSaveDir() async {
    final _localPath = (await _findLocalPath())!;
    final savedDir = Directory(_localPath);
    bool hasExisted = await savedDir.exists();
    logger.i(hasExisted);
    if (!hasExisted) {
      savedDir.create();
    }

    return _localPath;
  }

  Future<String?> _findLocalPath() async {
    String? externalStorageDirPath;
    if (Platform.isAndroid) {
      final directory = await getExternalStorageDirectory();
      externalStorageDirPath = directory?.path;
    } else if (Platform.isIOS) {
      externalStorageDirPath =
          (await getApplicationDocumentsDirectory()).absolute.path;
    }
    return externalStorageDirPath;
  }

  void _bindBackgroundIsolate() {
    bool isSuccess = IsolateNameServer.registerPortWithName(_port.sendPort, 'downloader_send_port');

    logger.i("_bindBackgroundIsolate isSuccess " + isSuccess.toString());

    if (!isSuccess) {
      _unbindBackgroundIsolate();
      _bindBackgroundIsolate();
      return;
    }

    _port.listen((dynamic data) {
      String id = data[0];
      DownloadTaskStatus status = data[1];
      int progress = data[2];

      logger.i(id + ", " + status.toString() + "," + progress.toString());
    });
  }

  void _unbindBackgroundIsolate() {
    IsolateNameServer.removePortNameMapping('downloader_send_port');
  }

  @pragma('vm:entry-point')
  static void downloadCallback(
      String id, DownloadTaskStatus status, int progress) {
    final SendPort? send =
        IsolateNameServer.lookupPortByName('downloader_send_port');
    send?.send([id, status, progress]);
  }

  void _fetchMenualCategory() async {
    final response = await repository.getMenualCategory();

    response.when(success: (response) {
      logger.i(response);
      _categoryList.value = response;
      loading.value = false;
    }, error: (error) {
      logger.e("[_fetchMenualCategory] Api Error -> $error");
      MessageUtil.showToast("정보를 불러오는데 실패하였습니다");
    });
  }

  void fetchSearchMenualList(String kidofcomdtySeCode) async {
    final response = await repository
        .getMenualList(MenualListRequest(kidofcomdtySeCode: kidofcomdtySeCode));

    response.when(success: (response) {
      logger.i(response);
      _categoryQueryList.value = response;
    }, error: (error) {
      logger.e("[fetchSearchMenualList] Api Error -> $error");
      MessageUtil.showToast("정보를 불러오는데 실패하였습니다");
    });
  }

  Future<bool> _checkPermission() async {
    if (Platform.isIOS) return true;

    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    if (Platform.isAndroid && androidInfo.version.sdkInt! <= 28) {
      final status = await Permission.storage.status;
      if (status != PermissionStatus.granted) {
        final result = await Permission.storage.request();
        if (result == PermissionStatus.granted) {
          return true;
        }
      } else {
        return true;
      }
    } else {
      return true;
    }
    return false;
  }

  @override
  void onClose() {
    _unbindBackgroundIsolate();
    super.onClose();
  }
}
