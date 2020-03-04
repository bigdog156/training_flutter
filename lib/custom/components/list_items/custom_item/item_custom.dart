import 'package:flutter/material.dart';

class ItemCustom extends StatelessWidget{
  final Widget avatar;
  final Widget content;
  final Widget bottom;
  ItemCustom({this.avatar, this.content, this.bottom});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        children: <Widget>[
          avatar,
          content,
          bottom,
        ],
      ),
    );
  }
}