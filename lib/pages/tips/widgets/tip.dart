import 'package:cuali_green_calculator/utils/responsive.dart';
import 'package:flutter/material.dart';

class Tip extends StatefulWidget {
  const Tip({Key key}) : super(key: key);

  @override
  _TipState createState() => _TipState();
}

class _TipState extends State<Tip> {
  //const EjemColumn({Key? key}) : super(key: key);
  int selectedItemIndex = 0;
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Container(
      height: responsive.hp(70),
      margin: EdgeInsets.only(top: 10, bottom: 5, left: 5, right: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // buildTextTipAhorro(Colors.lightGreen, 350.0, 50.0, 'Tips de Ahorro'),
          buildCajaTip(0, Colors.white, 350.0, 50.0, 'Ahorra hasta 4 mil..'),
          buildCajaTip(1, Colors.white, 350.0, 50.0, 'Texto 2'),
          buildCajaTip(2, Colors.white, 350.0, 50.0, 'Texto 3'),
          buildCajaTip(3, Colors.white, 350.0, 50.0, 'Texto 4'),
          buildCajaTip(4, Colors.white, 350.0, 50.0, 'Texto 4'),
          //buildCajaTip(5, Colors.white, 350.0, 50.0, 'Texto 4'),
        ],
      ),
    );
  }

  Widget buildTextTipAhorro(
      Color color, double ancho, double largo, String text) {
    return Column(
      children: [
        Container(
          width: ancho,
          height: largo,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/png/icon_hoja.png'),
                Text(text,
                    style: const TextStyle(color: Colors.white, fontSize: 16)),
              ]),
          margin:
              const EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 15),
        )
      ],
    );
  }

  Widget buildCajaTip(
      int index, Color color, double ancho, double largo, String text) {
    final Responsive responsive = Responsive.of(context);
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItemIndex = index;
        });
      },
      child: Container(
        width: ancho,
        height: largo,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: index == selectedItemIndex
              ? Colors.lightGreen[100]
              : Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10),
              width: responsive.wp(10),
              child: Image.asset('assets/png/icon_hoja.png'),
            ),
            Container(
              width: responsive.wp(40),
              margin: EdgeInsets.only(left: 1),
              child: Text(
                text,
                style: const TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 30,
              width: 30,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Color(0xff16a596),
                borderRadius: BorderRadius.all(
                  Radius.circular(90),
                ),
              ),
              child: Text(
                "2",
                style: TextStyle(
                    fontFamily: 'Lato', fontSize: 16, color: Colors.white),
              ),
            )
          ],
        ),
        margin: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
      ),
    );
  }
}
