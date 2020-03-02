import 'package:flutter/material.dart';
class BaseButton extends StatelessWidget {
  final double w;
  final double h;
  final BoxDecoration boxDecoration;
  final Text text;
  final click;
  BaseButton({this.w , this.h , this.text, this.boxDecoration, this.click});
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: click,
      child: Container(
        width: w,
        height: h,
        decoration: boxDecoration,
        child: Center(
          child: text,
        ),
      ),
    );
  }
}


class WhiteButton extends StatelessWidget{
  final String text;
  final onclick;
  final Color colorBg;
  final Color colorText;
  final BoxDecoration boxDecorationCustom;
  WhiteButton({this.text,this.boxDecorationCustom, this.onclick, this.colorBg, this.colorText});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: onclick,
      child: Container(
        width: 300,
        height: 45,
        decoration: BoxDecoration(
          color: colorBg,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
            child: Text(text, style: TextStyle(
                color: colorText,
                fontSize: 15
            ),)
        ),
      ),
    );
  }
}