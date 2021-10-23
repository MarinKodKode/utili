import 'package:cuali_green_calculator/widgets/bottom_bar.dart';
import 'package:cuali_green_calculator/pages/main_page/widgets/main_element.dart';
import 'package:cuali_green_calculator/pages/main_page/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            MainTitle(
              title: "Puntos verdes:",
              subtitle: r"$475.16",
            ),
            MainElement(),
          ],
        ),
      ),
    );
  }
}
