import 'package:flutter/material.dart';
class ButtonText extends StatelessWidget{
  final Widget titleWidget;
  final onClick;
  ButtonText({this.titleWidget, this.onClick});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: onClick,
      child: titleWidget,
    );
  }
}