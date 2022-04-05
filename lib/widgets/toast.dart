import 'package:fluttertoast/fluttertoast.dart';

abstract class MessageUtil {
  static showToast(String msg) {
    return Fluttertoast.showToast(
        msg: msg,
        gravity: ToastGravity.BOTTOM,
        toastLength: Toast.LENGTH_SHORT
    );
  }
}