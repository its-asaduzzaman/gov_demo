import 'package:flutter/material.dart';

import 'medium_text_widget.dart';

class TothoNameWidget extends StatelessWidget {
  final String text;
  const TothoNameWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.black38,
              width: 1.0,
            ),
            right: BorderSide(
              color: Colors.black38,
              width: 1.0,
            ),
            left: BorderSide(
              color: Colors.black38,
              width: 1.0,
            ),
            bottom: BorderSide(
              color: Colors.black38,
              width: 1.0,
            ),
          ),
        ),
        child: MediumSizeText(
          text: text,
          color: Colors.black38,
          size: 12,
        ),
      ),
    );
  }
}
