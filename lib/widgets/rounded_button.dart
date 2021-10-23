import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RoundedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String labelButton;
  const RoundedButton({Key key, this.onPressed, this.labelButton})
      : assert(labelButton != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      child: Container(
        child: Text(
          this.labelButton,
          style: TextStyle(color: Colors.white, fontFamily: 'Lato'),
        ),
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
        decoration: BoxDecoration(
          color: Color(0xff16A596),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
      ),
      onPressed: this.onPressed,
    );
  }
}
