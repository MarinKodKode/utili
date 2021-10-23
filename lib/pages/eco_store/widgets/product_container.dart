import 'package:cuali_green_calculator/pages/eco_store/widgets/product.dart';
import 'package:cuali_green_calculator/utils/responsive.dart';
import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Container(
        height: responsive.hp(60),
        width: responsive.wp(90),
        margin: EdgeInsets.only(top: 1, bottom: 35),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          //color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Product(),
              Product(),
              Product(),
              Product(),
              Product(),
              Product(),
              Product(),
              Product(),
              Product(),
            ],
          ),
        ));
  }
}
