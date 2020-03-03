import 'package:flutter/material.dart';

class OneText400 extends StatelessWidget {
  final String text;

  OneText400({this.text});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      text,
      style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w400
      ),
    );
  }
}