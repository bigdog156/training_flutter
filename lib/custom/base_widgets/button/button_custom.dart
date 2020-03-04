import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget{
  final Widget content;
  final double height;
  final double width;
  final List<Color> listColor;
  ButtonCustom({
    @required this.content,
    @required this.height,
    @required this.width,
    @required this.listColor});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      onPressed: (){},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(80),
      ),
      padding: const EdgeInsets.all(0),
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: listColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(80.0)),
        ),
        child: Container(
          constraints:  BoxConstraints(maxWidth: width, maxHeight: height),
          alignment: Alignment.center,
          child: content
        ),
      ),
    );
  }
}