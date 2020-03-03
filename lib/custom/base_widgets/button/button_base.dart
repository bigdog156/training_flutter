import 'package:flutter/material.dart';

class ButtonBase extends StatelessWidget{
  final String title;
  final double height;
  final double width;
  final List<Color> listColor;
  final Color colorText;
  ButtonBase({
    @required this.title,
    @required this.height,
    @required this.width,
    this.colorText,
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
          child: Text(
            title,
            style: TextStyle(
              color: colorText,
              fontSize: 16
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
  Widget textCustom(String title, Color colorText){
    return Text(
      title,
      style: TextStyle(
          color: colorText,
          fontSize: 16
      ),
      textAlign: TextAlign.center,
    );
  }
}
