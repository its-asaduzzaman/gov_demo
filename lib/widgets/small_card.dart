import 'package:flutter/material.dart';
import 'package:gov_demo/widgets/small_text_widget.dart';

import '../utils/colors.dart';
import 'medium_text_widget.dart';

class SmallCard extends StatelessWidget {
  final Color backgroundColour;
  final String number;
  final String text;

  const SmallCard({
    Key? key,
    required this.backgroundColour,
    required this.number,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: backgroundColour, borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.transWhiteColor,
            radius: 20,
            child: Icon(
              Icons.auto_awesome_mosaic_outlined,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              MediumSizeText(text: number),
              SizedBox(
                width: 8,
              ),
              SmallSizeText(text: text)
            ],
          )
        ],
      ),
    );
  }
}
