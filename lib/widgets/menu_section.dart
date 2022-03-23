import 'package:farming_manager/widgets/farming_text.dart';
import 'package:flutter/material.dart';

import '../models/home/home_category_model.dart';

class ItemMenuCard extends StatelessWidget {
  final HomeCategoryModel model;

  const ItemMenuCard({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 2),
                color: Colors.black.withOpacity(.1),
                blurRadius: 8)
          ]),
      child: Center(child: FarmingText(text: model.name, size: 15))
    );
  }
}
