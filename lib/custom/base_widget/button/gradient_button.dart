import 'package:flutter/material.dart';
class GradientButton extends StatelessWidget{
  final String text;
  final onclick;
  final BoxDecoration boxDecorationCustom;
  GradientButton({this.text,this.boxDecorationCustom, this.onclick});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialButton(
      splashColor: Colors.red,
      onPressed: onclick,
      child: Container(
        width: 200,
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
    borderRadius: BorderRadius.circular(10),
  );
}
BoxDecoration choiceColor( Color color){
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(20),
  );
}