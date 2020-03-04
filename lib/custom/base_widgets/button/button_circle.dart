import 'package:flutter/material.dart';

class ButtonCircle extends StatelessWidget{
  final click;
  final Widget icon;
  final double size;
  ButtonCircle({
    @required this.click,
    @required this.icon,
    @required this.size,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      padding: EdgeInsets.all(0),
      onPressed: click,
      shape: CircleBorder(),
      child: Ink(
          decoration: BoxDecoration(
            color: Color(0xFF2CB9B0),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Container(
            constraints: BoxConstraints(maxWidth:size, maxHeight: size),
            alignment: Alignment.center,
            child: icon,
          )
      )
    );
  }
}