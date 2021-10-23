import 'package:cuali_green_calculator/utils/responsive.dart';
import 'package:cuali_green_calculator/widgets/rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainElement extends StatelessWidget {
  const MainElement({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Container(
      width: 300,
      child: Column(
        children: <Widget>[
          Container(
            child: Image.asset(
              'assets/png/tree.png',
            ),
            width: responsive.wp(100),
            height: responsive.ip(40),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffdddddd)),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: Colors.white,
            ),
            margin: EdgeInsets.only(
              bottom: 20,
            ),
            height: 50,
            width: responsive.wp(80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Emisiones",
                  style: TextStyle(
                    fontFamily: 'Lato',
                  ),
                ),
                Container(
                  color: Color(0xffdddddd),
                  width: 1,
                  margin: EdgeInsets.all(0),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_upward_rounded,
                        color: Colors.green,
                      ),
                      Text("+200.0")
                    ],
                  ),
                ),
                Container(
                  color: Color(0xffdddddd),
                  width: 1,
                  margin: EdgeInsets.all(0),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_downward_rounded,
                        color: Colors.red,
                      ),
                      Text("-67.34")
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 25),
            child: ElevatedButton(
              child: Text(
                "Cobrar",
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w500),
              ),
              onPressed: () {
                print("object");
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xff16a896),
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
