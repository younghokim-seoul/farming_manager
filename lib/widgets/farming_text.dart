import 'package:farming_manager/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FarmingText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;
  final FontStyle fontStyle;

  const FarmingText(
      {Key? key,
      required this.text,
      required this.size,
      this.color = AppColors.black,
      this.fontStyle = FontStyle.normal,
      this.weight = FontWeight.w400})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
          fontStyle: fontStyle,
          fontWeight: weight,
          fontSize: size,
          color: color),
    );
  }
}
