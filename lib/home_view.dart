import 'package:flutter/material.dart';
import 'package:galaxy/widgets/custom_text.dart';
import 'package:get/get.dart';

import 'planets_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, top: 20, bottom: 15),
                  decoration: BoxDecoration(
                      color: const Color(0xff323653),
                      borderRadius: BorderRadius.circular(32)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomText(
                        text: "Explore The ",
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        alignment: Alignment.topLeft,
                      ),
                      Row(children: const [
                        CustomText(
                            text: "Solar",
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            textColor: Color(0xffFFD55F)),
                        CustomText(
                          text: " System.",
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ])
                    ],
                  ),
                ),
                Stack(alignment: Alignment.bottomCenter, children: [
                  SizedBox(
                      width: double.infinity,
                      height: 700,
                      child: Image.asset('assets/images/stars.png',
                          fit: BoxFit.cover)),
                  InkWell(
                    onTap: () {
                      Get.to(const PlanrtsView());
                    },
                    child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            gradient: const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color.fromARGB(255, 89, 91, 111),
                                Color(0xff323653),
                              ],
                            )),
                        child: const Text("FLY",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white))),
                  )
                ])
              ]),
        ),
      ));
}
