import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class InputText extends StatelessWidget {
  final String placeholder;
  final IconData inputIcon;
  const InputText({Key key, this.placeholder, this.inputIcon})
      : assert(placeholder != null && inputIcon != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      padding: EdgeInsets.symmetric(vertical: 7, horizontal: 5),
      prefix: Container(
        width: 40,
        height: 30,
        padding: EdgeInsets.all(5),
        child: Icon(
          this.inputIcon,
          color: Color(0xffcccccc),
        ),
      ),
      placeholder: this.placeholder,
      style: TextStyle(
        fontFamily: 'Lato',
      ),
      placeholderStyle: TextStyle(
        fontFamily: 'Lato',
        color: Color(0xffcccccc),
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Color(0xffdddddd),
          ),
        ),
      ),
    );
  }
}
