import 'package:cuali_green_calculator/pages/chart/widgets/main_chart.dart';
import 'package:cuali_green_calculator/pages/main_page/widgets/title.dart';
import 'package:cuali_green_calculator/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            MainTitle(
              title: "Mi huella ecológica",
              subtitle: "",
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: BarChartSample1(),
            ),
          ],
        ),
      ),
    );
  }
}
