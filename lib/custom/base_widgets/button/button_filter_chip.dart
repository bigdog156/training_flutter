import 'package:flutter/material.dart';

class ButtonFilterChip extends StatefulWidget{
  final Widget text;
  ButtonFilterChip({
    @required this.text
  });
  @override
  _ButtonFilterChipState createState() => _ButtonFilterChipState();
}

class _ButtonFilterChipState extends State<ButtonFilterChip> {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FilterChip(
      selectedColor: Color(0xFF2CB9B0),
      label: widget.text,
      selected: state,
      onSelected: (value){
        setState(() {
          state = !state;
        });
      },
    );
  }
}
