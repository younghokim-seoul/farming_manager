import 'package:auto_size_text/auto_size_text.dart';
import 'package:farming_manager/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/home/home_category_model.dart';

class ItemMenuCard extends StatelessWidget {
  final HomeCategoryModel model;

  const ItemMenuCard({Key? key, required this.model}) : super(key: key);

  // decoration: BoxDecoration(
  // borderRadius: BorderRadius.circular(15),
  // color: Colors.white,
  // boxShadow: [
  // BoxShadow(
  // color: Colors.grey.withOpacity(0.25),
  // spreadRadius: 0,
  // blurRadius: 10,
  // offset: const Offset(6, 8),
  // ),
  // ],
  // ),
  // padding: const EdgeInsets.all(10),
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: const Color(0xFF997000),
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(2, 4),
                  color: Colors.black.withOpacity(.1),
                  blurRadius: 8)
            ]),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(5),
          child: AutoSizeText(
            model.name,
            maxLines: 1,
            textAlign: TextAlign.center,
            minFontSize: 0,
            stepGranularity: 0.1,
            style: GoogleFonts.lato(
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: AppColors.white),
          ),
        )));
  }
}
