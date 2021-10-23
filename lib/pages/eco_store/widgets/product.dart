import 'package:cuali_green_calculator/utils/responsive.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Container(
      margin: EdgeInsets.only(top: 3, bottom: 3),
      height: responsive.hp(15),
      width: responsive.wp(85),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Color(0xffdddddd),
            spreadRadius: 1,
          )
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.lightGreen.shade200,
            Colors.lightGreen.shade100,
          ],
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Image.network('https://picsum.photos/250?image=9'),
          ),
          Container(
            width: responsive.wp(48),
            margin: EdgeInsets.only(left: responsive.wp(2)),
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  r"$$$$",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Producto",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Descripcion",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
