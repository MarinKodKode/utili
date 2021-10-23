import 'package:cuali_green_calculator/utils/responsive.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class MainTitle extends StatelessWidget {
  final String title, subtitle;
  const MainTitle({Key key, this.title, this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return AspectRatio(
      aspectRatio: 16 / 9,
      child: LayoutBuilder(builder: (_, constraints) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.greenAccent,
                Colors.white38,
              ],
            ),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: constraints.maxHeight * 0.6,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 3,
                      width: constraints.maxWidth,
                      color: Color(0x00000000),
                    ),
                    Container(
                      //width: constraints.maxWidth,
                      margin: EdgeInsets.only(top: 5.0, bottom: 10.0),
                      child: Text(
                        this.title,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: responsive.ip(2.3),
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Lato',
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        this.subtitle,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: responsive.ip(2.3),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                  top: constraints.maxHeight * 0.3,
                  right: constraints.maxWidth * 0.05,
                  child: Image.asset(
                    'assets/png/aves.png',
                    width: constraints.maxWidth * 0.45,
                  ))
            ],
          ),
        );
      }),
    );
  }
}
