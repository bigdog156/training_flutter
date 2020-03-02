import 'package:flutter/material.dart';
class BaseButton extends StatelessWidget {
  final double w;
  final double h;
  final BoxDecoration boxDecoration;
  final Text text;
  var click;
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

class GradientButton extends StatelessWidget{
  final String text;
  final onclick;
  final BoxDecoration boxDecorationCustom;
  GradientButton({this.text,this.boxDecorationCustom, this.onclick});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: onclick,
      child: Container(
        width: 300,
        height: 45,
        decoration: boxDecorationCustom,
        child: Center(
            child: Text(text, style: TextStyle(
                color: Colors.white,
                fontSize: 15
            ),)
        ),
      ),
    );
  }
}
BoxDecoration greenGradient(){
  return BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      colors: [Color(0xFF38EF7D),Color(0xFF2CB9B0)],
    ),
    borderRadius: BorderRadius.circular(20),
  );
}
BoxDecoration choiceColor( Color color){
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(20),
  );
}

class WhileButton extends StatelessWidget{
  final String text;
  final onclick;
  final BoxDecoration boxDecorationCustom;
  WhileButton({this.text,this.boxDecorationCustom, this.onclick});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: onclick,
      child: Container(
        width: 300,
        height: 45,
        decoration: boxDecorationCustom,
        child: Center(
            child: Text(text, style: TextStyle(
                color: Colors.black,
                fontSize: 15
            ),)
        ),
      ),
    );
  }
}