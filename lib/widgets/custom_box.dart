import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomBox extends StatelessWidget {
 final Widget child;
  final double width;
  final double height;
  final Color color;
  final BorderRadiusGeometry borderRadius;
 

    const CustomBox({
    Key? key,
    this.child = const CustomText(),
    this.width = 323,
    this.height = 403,
    this.color = const Color(0xffD74652),
    required this.borderRadius,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
              width: width,
              height: height,
              padding: const EdgeInsets.all(15),
              decoration:  BoxDecoration(
                color: color ,
                 borderRadius: borderRadius,
              ),
              child: child
    );
  }
}
//BorderRadius.circular(32)