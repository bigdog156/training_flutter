import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'dart:core';

class NumberInput extends StatefulWidget {
  final FocusNode myNode;
  final FocusNode nextNode;
  final TextEditingController controller;
  final bool autoFocus;
  NumberInput({this.myNode, this.controller, this.nextNode, this.autoFocus});
  @override
  _NumberInputState createState() => _NumberInputState();
}

class _NumberInputState extends State<NumberInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 60,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
          cursorWidth: 0,
          focusNode: widget.myNode,
          onChanged: (value) {
            print(value);
            if (int.parse(value) >= 0) {
              FocusScope.of(context).requestFocus(widget.nextNode);
            }
          },
          autofocus: true,
          textAlign: TextAlign.center,
          controller: widget.controller,
          decoration: new InputDecoration(
//            enabledBorder: OutlineInputBorder(
//              borderSide: BorderSide(style: BorderStyle.none),
//            )
              helperStyle: TextStyle(fontSize: 0),
              border: OutlineInputBorder(),

          ),
          maxLength: 1,
          keyboardType: TextInputType.number,
          inputFormatters: [
            WhitelistingTextInputFormatter(RegExp("[0-9]")),
          ]),
    );
  }
}
