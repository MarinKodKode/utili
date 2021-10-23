import 'dart:ui';

import 'package:cuali_green_calculator/utils/responsive.dart';
import 'package:flutter/material.dart';

class ContactBBVA extends StatelessWidget {
  const ContactBBVA({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffffffff),
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
      margin: EdgeInsets.only(left: 20, right: 20, top: 15),
      height: responsive.hp(15),
      width: responsive.wp(90),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.phone,
            color: Colors.green,
            size: 40,
          ),
          Text(
            "Llamar a un asesor BBVA",
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Lato',
            ),
          ),
        ],
      ),
    );
  }
}
