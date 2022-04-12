import 'dart:io';
import 'dart:isolate';
import 'dart:ui';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:farming_manager/main.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:uuid/uuid.dart';

//인터페이스 역활 typedef
typedef DownloadTaskStatusCallback = void Function(DownloadTaskStatus);

class FileDownLoadManager {
  final ReceivePort _port = ReceivePort();

  late bool _permissionReady;
  late String _localPath;
  late bool _isLoading;
  late DownloadTaskStatusCallback _onDownloadStatus;

  late Uuid uuid = const Uuid();

  void init() {
    _isLoading = false;
    _permissionReady = false;
    _prepare();
    _bindBackgroundIsolate();
    FlutterDownloader.registerCallback(downloadCallback);
  }

  void addDownloadStateCallback({required DownloadTaskStatusCallback callback}) {
    _onDownloadStatus = callback;
  }

  void requestDownLoad(String url, String fileName) async {
    if (_permissionReady) {
      logger.i("localPath => " + _localPath);
      if(_isLoading){
        return;
      }
      final taskId = await FlutterDownloader.enqueue(
        url: url,
        fileName: uuid.v4() + ".hwp",
        savedDir: _localPath,
        showNotification: true,
        openFileFromNotification: true,
        saveInPublicStorage: true, //파일저장을 공개적으로 할것인지
      );
      _isLoading = true;
      _onDownloadStatus(DownloadTaskStatus.enqueued);
      logger.d("taskId " + taskId.toString());
    }
  }

  Future<void> _prepare() async {
    _permissionReady = await _checkPermission();

    if (_permissionReady) {
      await _prepareSaveDir();
    }
  }

  Future<void> _prepareSaveDir() async {
    _localPath = (await _findLocalPath())!;
    final savedDir = Directory(_localPath);
    bool hasExisted = await savedDir.exists();
    if (!hasExisted) {
      savedDir.create();
    }
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
    bool isSuccess = IsolateNameServer.registerPortWithName(
        _port.sendPort, 'downloader_send_port');
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

      if(status.value == DownloadTaskStatus.complete.value){
        _isLoading = false;
      }
      _onDownloadStatus(status);
      // logger.i(id + ", " + status.toString() + "," + progress.toString());
    });
  }

  void _unbindBackgroundIsolate() {
    IsolateNameServer.removePortNameMapping('downloader_send_port');
    _isLoading = false;
  }

  @pragma('vm:entry-point')
  static void downloadCallback(
      String id, DownloadTaskStatus status, int progress) {
    final SendPort? send =
        IsolateNameServer.lookupPortByName('downloader_send_port');
    send?.send([id, status, progress]);
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

  void clear() {
    _unbindBackgroundIsolate();
  }
}
