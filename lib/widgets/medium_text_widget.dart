import 'package:flutter/material.dart';

class MediumSizeText extends StatelessWidget {
  final String text;
  const MediumSizeText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}
