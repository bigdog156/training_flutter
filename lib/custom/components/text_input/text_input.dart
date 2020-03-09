import 'package:flutter/material.dart';

class TextInputCustom extends StatefulWidget {
  @override
  _TextInputCustomState createState() => _TextInputCustomState();
}

class _TextInputCustomState extends State<TextInputCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,

      height: 60,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: TextField(

        decoration: InputDecoration(
          hintText: "Type your message",
          enabledBorder: OutlineInputBorder(
            gapPadding: 0,
            borderSide: BorderSide(width: 0, style: BorderStyle.none)
          ),
//          enabledBorder: OutlineInputBorder(
//            borderSide: BorderSide(color: Colors.white),
//          ),
//          border: OutlineInputBorder(
//            borderSide: BorderSide(color: Colors.white),
//          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(style: BorderStyle.none),
          ),
          suffixIcon: Icon(Icons.tag_faces, color: Colors.black,)
        ),
      ),
    );
  }
}
