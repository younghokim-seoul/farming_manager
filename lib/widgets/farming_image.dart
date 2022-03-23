import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

class FarmingImage extends StatelessWidget {
  final double width;
  final double heigth;
  final String? url;

  const FarmingImage({
    Key? key,
    required this.url,
    this.width = 100,
    this.heigth = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
        width: width,
        height: heigth,
        imageUrl: url ?? "",
        placeholder: (context, url) => const CupertinoActivityIndicator(),
        errorWidget: (context, url, error) => Container());
  }
}
