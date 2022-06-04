import 'package:flutter/material.dart';
import 'package:galaxy/widgets/custom_text.dart';

import 'widgets/custom_box.dart';

class EarthView extends StatelessWidget {
  const EarthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset('assets/images/Earth.png', fit: BoxFit.cover, ),
          ),
          CustomBox(
            borderRadius: BorderRadius.circular(32),
            child: Column(children: const [
              CustomText(
                  text: "Earth",
                  alignment: Alignment.topLeft,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text:
                    "Earth is the third planet from the Sun and the only astronomical object known to harbor and support life.",
                textAlign: TextAlign.start,
                fontWeight: FontWeight.w300,
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text: "Earth orbits around the Sun in about 365.25 days.",
                textAlign: TextAlign.start,
                fontWeight: FontWeight.w300,
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text:
                    "According to radiometric dating estimation and other evidence, Earth formed over 4.5 billion years ago. Within the first billion years of Earth's history, life appeared in the oceans and began to affect Earth's atmosphere and surface, leading to the proliferation of anaerobic and, later, aerobic organisms.",
                textAlign: TextAlign.start,
                fontWeight: FontWeight.w300,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
