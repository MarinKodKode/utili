import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cuali_green_calculator/pages/main_page/widgets/title.dart';
import 'package:cuali_green_calculator/pages/tips/widgets/tip.dart';
import 'package:cuali_green_calculator/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Tips extends StatelessWidget {
  const Tips({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      backgroundColor: Colors.grey[250],
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            MainTitle(
              title: "Tips de ahorro",
              subtitle: "",
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Color(0xffdddddd),
                    spreadRadius: 1,
                  )
                ],
              ),
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 85),
              height: 400,
              child: const Tip(),
            )
          ],
        ),
      ),
    );
  }
}
