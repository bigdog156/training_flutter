import 'package:flutter/material.dart';

class ButtonSwitch extends StatefulWidget{
  @override
  _ButtonSwitchState createState() => _ButtonSwitchState();
}

class _ButtonSwitchState extends State<ButtonSwitch> {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Color(0xFF2DA9E1),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10),
            child:
              Text(state ? "Turn Off Dart Mode":"Turn On Dart Mode", style:
                TextStyle(
                  color: Colors.white
                ),
              ),
          ),
          Switch(
            value: state,
            onChanged: (value){
              setState(() {
                state = value;
              });
            },
          ),
        ],
      ),
    );
  }
}