import 'package:flutter/material.dart';
import 'package:galaxy/widgets/custom_text.dart';

import 'widgets/custom_box.dart';

class MercuryView extends StatelessWidget {
  const MercuryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset('assets/images/Mercury.png', fit: BoxFit.cover,),
          ),
          CustomBox(
            borderRadius: BorderRadius.circular(32),
            child: Column(children: const [
              CustomText(
                  text: "Mercury",
                  alignment: Alignment.topLeft,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text:
                    "Mercury is the smallest planet in the Solar System and the closest to the Sun.",
                textAlign: TextAlign.start,
                fontWeight: FontWeight.w300,
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text:
                    "Its orbit around the Sun takes 87.97 Earth days, the shortest of all the Sun's planets.",
                textAlign: TextAlign.start,
                fontWeight: FontWeight.w300,
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text:
                    "Two spacecraft have visited Mercury: Mariner 10 flew by in 1974 and 1975; and MESSENGER, launched in 2004, orbited Mercury over 4,000 times in four years before exhausting its fuel and crashing into the planet's surface on April 30, 2015.",
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
