import 'package:flutter/material.dart';
import 'package:gov_demo/widgets/small_text_widget.dart';

class IconsAndText extends StatelessWidget {
  final IconData icon;
  final Color backGroundColor;
  final String text;
  const IconsAndText({
    Key? key,
    required this.icon,
    required this.backGroundColor,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: backGroundColor,
          radius: 20,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SmallSizeText(
          text: text,
          color: Colors.black,
        )
      ],
    );
  }
}
