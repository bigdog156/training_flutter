import 'package:flutter/material.dart';

class ButtonChoiceChip extends StatefulWidget{
  @override
  _ButtonChoiceChipState createState() => _ButtonChoiceChipState();
}

class _ButtonChoiceChipState extends State<ButtonChoiceChip> {
  bool _state = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
       ChoiceChip(
         avatar: Container(
           child: CircleAvatar(
             radius: 50,
             backgroundImage: AssetImage("assets/girl.jpg"),
           ),
         ),
          label: Text("FaceBook", style: TextStyle(color: Colors.white),),
          selected: _state,
          onSelected: (i){
            setState(() {
              print(_state);
              _state = !_state;
            });
          },
      );
  }
}