import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'icon_text_widget.dart';

class BigCard extends StatelessWidget {
  final String mainText;
  const BigCard({
    Key? key,
    required this.mainText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // elevated shadow here
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.grey.shade600, spreadRadius: 1, blurRadius: 2)
      ], color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 40,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: AppColors.transGreenColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
            ),
            child: Text(
              mainText,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            height: 110,
            width: double.maxFinite,
            decoration: BoxDecoration(color: Colors.white12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconsAndText(
                  icon: Icons.auto_awesome_mosaic_outlined,
                  backGroundColor: AppColors.mainColor,
                  text: "Holding\nEntry",
                ),
                IconsAndText(
                  icon: Icons.auto_awesome_mosaic_outlined,
                  backGroundColor: AppColors.purpleColor,
                  text: "Holding Card\nActivity",
                ),
                IconsAndText(
                  icon: Icons.flash_on_outlined,
                  backGroundColor: AppColors.orangeColor,
                  text: "Holding Card\nActivity",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
