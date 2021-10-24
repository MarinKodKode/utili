import 'package:cuali_green_calculator/pages/chart/chart.dart';
import 'package:cuali_green_calculator/pages/eco_store/eco_store_main.dart';
import 'package:cuali_green_calculator/pages/main_page/main_page.dart';
import 'package:cuali_green_calculator/pages/tips/green_tips.dart';
import 'package:cuali_green_calculator/pages/tips/tips.dart';
import 'package:cuali_green_calculator/pages/user/user_main.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedItemIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 60,
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.green[400],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.grey.shade100,
                  spreadRadius: 1,
                ),
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildContainerBottomNav(
                Icons.other_houses_outlined,
                0,
                MainPage(),
              ),
              buildContainerBottomNav(
                Icons.bar_chart_outlined,
                1,
                Chart(),
              ),
              buildContainerBottomNav(
                Icons.shopping_cart_outlined,
                2,
                EcoStoreMain(),
              ),
              buildContainerBottomNav(
                Icons.eco_outlined,
                3,
                Tips(),
              ),
              buildContainerBottomNav(
                Icons.person_outline_rounded,
                4,
                User(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContainerBottomNav(IconData icono, int index, destino) {
    return GestureDetector(
      onTap: () {
        setState(() {
          ruta(context, destino);
          selectedItemIndex = index;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: index == selectedItemIndex
              ? Colors.green[500]
              : Colors.green[400],
          shape: BoxShape.circle,
          boxShadow: index == selectedItemIndex
              ? [BoxShadow(color: Colors.green, blurRadius: 5, spreadRadius: 1)]
              : [],
        ),
        height: 70,
        width: 50,
        child: Icon(icono,
            color: index == selectedItemIndex ? Colors.white : Colors.white),
      ),
    );
  }
}

ruta(context, ruta) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (BuildContext context) {
        return ruta;
      },
    ),
  );
}
