import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FarmingImage extends StatelessWidget {
  final double width;
  final double height;
  final double placeholderSize;
  final Color color;
  final String? url;

  const FarmingImage({
    Key? key,
    required this.url,
    this.width = 100,
    this.height = 100,
    this.placeholderSize = 50,
    this.color = Colors.red,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
        width: width.w,
        height: height.h,
        imageUrl: url ?? "",
        placeholder: (context, url) => const CupertinoActivityIndicator(),
        imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(image: imageProvider, fit: BoxFit.fill),
              ),
            ),
        errorWidget: (context, url, error) =>
            Icon(CupertinoIcons.camera, size: placeholderSize));
  }
}
