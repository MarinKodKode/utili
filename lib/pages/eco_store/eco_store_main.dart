import 'package:cuali_green_calculator/pages/eco_store/widgets/product_container.dart';
import 'package:cuali_green_calculator/pages/main_page/widgets/title.dart';
import 'package:cuali_green_calculator/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class EcoStoreMain extends StatelessWidget {
  const EcoStoreMain({Key key}) : super(key: key);

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
              title: "Tienda verde",
              subtitle: "",
            ),
            ProductContainer(),
          ],
        ),
      ),
    );
  }
}
