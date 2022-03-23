import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';



class FarmingImage extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final String? url;

  const FarmingImage({
    Key? key,
    required this.url,
    this.width = 100,
    this.height = 100,
    this.color = Colors.red,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
          width: width,
          height: height,
          imageUrl: url ?? "",
          placeholder: (context, url) => const CupertinoActivityIndicator(),
          errorWidget: (context, url, error) => Container(child: Icon(WeatherIcons.day_cloudy_gusts,size: 100,color: const Color(0xFFFFBB00))));
  }
}
