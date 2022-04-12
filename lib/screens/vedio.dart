import 'package:chewie/chewie.dart';
import 'package:farming_manager/controller/manual/manual_view_model.dart';
import 'package:farming_manager/controller/video/vedio_view_model.dart';
import 'package:farming_manager/data/response/menual_category_response.dart';
import 'package:farming_manager/data/response/vedio_category_response.dart';
import 'package:farming_manager/data/response/vedio_list_response.dart';
import 'package:farming_manager/main.dart';
import 'package:farming_manager/widgets/farming_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:video_player/video_player.dart';

import '../widgets/farming_text.dart';

class VedioScreen extends GetView<VideoViewModel> {
  VedioScreen({Key? key}) : super(key: key);

  final GlobalKey webViewKey = GlobalKey();
  InAppWebViewController? webViewController;
  final InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
      crossPlatform: InAppWebViewOptions(
        useShouldOverrideUrlLoading: true,
        mediaPlaybackRequiresUserGesture: false,
        javaScriptEnabled: true,
      ),
      android: AndroidInAppWebViewOptions(
        useHybridComposition: true,
      ),
      ios: IOSInAppWebViewOptions(
        allowsInlineMediaPlayback: true,
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: const FarmingText(text: "농업 기술 동영상", size: 16)),
      body: Obx(() => _buildBody(context, controller)),
    );
  }

  Widget _buildWebBody(BuildContext context, VideoViewModel viewModel) {
    if (viewModel.selectedUrl.isNotEmpty) {
      return SizedBox(
          height: Get.height * 0.4,
          child: Stack(
            children: [
              InAppWebView(
                key: webViewKey,
                initialUrlRequest:
                    URLRequest(url: Uri.parse(viewModel.selectedUrl)),
                initialOptions: options,
                onWebViewCreated: (controller) {
                  webViewController = controller;
                },
                androidOnPermissionRequest:
                    (controller, origin, resources) async {
                  return PermissionRequestResponse(
                      resources: resources,
                      action: PermissionRequestResponseAction.GRANT);
                },
                shouldOverrideUrlLoading: (controller, navigationAction) async {
                  return NavigationActionPolicy.ALLOW;
                },
                onLoadStart: (controller, url) {
                },
                onLoadStop: (controller, url) async {
                  viewModel.progressWebRendering.value = false;
                },
                onLoadError: (controller, url, code, message) {
                  viewModel.progressWebRendering.value = false;
                },
                onConsoleMessage: (controller, consoleMessage) {
                  print(consoleMessage);
                },
              ),
              Visibility(
                  visible: viewModel.progressWebRendering.value,
                  child: const Center(child: CircularProgressIndicator())),
            ],
          ));
    } else {
      return Container();
    }
  }

  Widget _buildBody(BuildContext context, VideoViewModel viewModel) {
    if (viewModel.loading.value == true) {
      return const Center(child: CircularProgressIndicator());
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _menualSelectDropDown(),
          _buildWebBody(context, viewModel),
          Expanded(
              child: PagedListView.separated(
            pagingController: controller.pagingController,
            builderDelegate: PagedChildBuilderDelegate<VedioListResponse>(
              firstPageProgressIndicatorBuilder: (context) => const Center(),
              itemBuilder: (context, item, index) => InkWell(
                onTap: () {
                  viewModel.progressWebRendering.value = true;
                  webViewController?.loadUrl(urlRequest: URLRequest(url: Uri.parse(item.videoLink)));
                  viewModel.selectedVedioItem(item);
                },
                child: ListTile(
                    title: FarmingText(text: item.videoTitle, size: 16)),
              ),
            ),
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ))
        ],
      );
    }
  }

  Widget _menualSelectDropDown() {
    return Container(
      padding: const EdgeInsets.all(5),
      width: Get.width,
      child: DropdownButtonFormField2(
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.zero,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        isExpanded: true,
        hint: const FarmingText(text: "선택하세요.", size: 14),
        icon: const Icon(
          Icons.arrow_drop_down,
          color: Colors.black45,
        ),
        iconSize: 30,
        buttonHeight: 50.h,
        buttonPadding: const EdgeInsets.only(left: 20, right: 10),
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        items: controller.vedioCategoryItems
            .map((item) => DropdownMenuItem<VedioCategoryResponse>(
                  value: item,
                  child: Text(
                    item.categoryNm,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ))
            .toList(),
        validator: (value) {
          if (value == null) {
            return 'Please select vedio.';
          }
        },
        onChanged: (value) {
          //Do something when changing the item if you want.
          logger.i("clicker s -> " + value.toString());
          final item = value as VedioCategoryResponse;

          controller.fetchVedioDetail(item.categoryCode);
        },
        onSaved: (value) {
          // Fimber.i("clicker -> " + value.toString());
        },
      ),
    );
  }
}
