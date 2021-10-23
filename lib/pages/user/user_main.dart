import 'package:cuali_green_calculator/pages/main_page/widgets/title.dart';
import 'package:cuali_green_calculator/pages/user/widgets/ContactBBVA.dart';
import 'package:cuali_green_calculator/pages/user/widgets/status.dart';
import 'package:cuali_green_calculator/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class User extends StatelessWidget {
  const User({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      body: Container(
        child: Column(
          children: [
            MainTitle(
              title: "Mi perfil BBVA",
              subtitle: "",
            ),
            Status(),
            ContactBBVA(),
          ],
        ),
      ),
    );
  }
}
