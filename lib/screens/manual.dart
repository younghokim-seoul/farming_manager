import 'package:farming_manager/controller/manual/manual_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/farming_text.dart';

class ManualScreen extends GetView<ManualViewModel> {

  const ManualScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: const FarmingText(text: "품목별 관리매뉴얼", size: 16)),
      body: Center(),
    );
  }
}
