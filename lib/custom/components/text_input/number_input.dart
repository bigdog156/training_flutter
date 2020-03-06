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
      width: 65,
      child: TextFormField(
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
              border: OutlineInputBorder(),
              counterStyle: TextStyle(color: Colors.white)),
          maxLength: 1,
          keyboardType: TextInputType.number,
          inputFormatters: [
            WhitelistingTextInputFormatter(RegExp("[0-9]")),
          ]),
    );
  }
}
