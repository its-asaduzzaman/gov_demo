import 'package:flutter/material.dart';

class SmallSizeText extends StatelessWidget {
  final String text;
  Color? color;
  SmallSizeText({Key? key, required this.text, this.color = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 11, color: color),
    );
  }
}
