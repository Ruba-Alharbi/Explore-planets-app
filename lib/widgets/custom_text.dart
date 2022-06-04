import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color textColor;
  final FontWeight fontWeight;
  final Alignment alignment;
  final TextAlign textAlign;

  const CustomText({
    Key? key,
    this.text = "",
    this.fontSize = 16,
    this.textColor = Colors.white,
    this.fontWeight = FontWeight.normal,
    this.alignment = Alignment.center,
    this.textAlign = TextAlign.center,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
          fontSize: fontSize,
          color: textColor,
          fontWeight: fontWeight,
        ),
      ),
    );
  }

}