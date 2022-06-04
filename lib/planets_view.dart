import 'package:flutter/material.dart';
import 'package:galaxy/earth_view.dart';
import 'package:galaxy/mercury_view.dart';
import 'package:galaxy/venus_view.dart';

class PlanrtsView extends StatelessWidget {
  const PlanrtsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: PageView(
          children: const [MercuryView(), VenusView(), EarthView()],
        ),
      ),
    );
  }
}
