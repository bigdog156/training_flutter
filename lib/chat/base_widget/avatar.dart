import 'package:flutter/material.dart';
import 'package:sophie/chat/models/user.dart';
import 'dart:math';
class Avatar extends StatelessWidget{

  final User _user;
  final double radius;
  Avatar(this._user, this.radius);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container (
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
                style: BorderStyle.solid,
              )
            ),
            child: CircleAvatar(
              radius: radius,
              backgroundImage: NetworkImage(_user.urlImage),
            ),
          ),
          Padding (
            padding: EdgeInsets.only(left: sqrt(radius*radius/2)+radius-4.5, top: sqrt(radius*radius/2)+radius-4.5),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                  style: BorderStyle.solid,
                )
              ),
              child: CircleAvatar(
                radius: 6.5,
                backgroundColor: changeState(_user.state),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Color changeState(String state){
  switch(state){
    case "online":
      return Color(0xFF2CB9B0);
    case 'off':
      return Colors.grey;
    case 'await':
      return Color(0xFFF8C756);
    case 'live':
      return Colors.white;
    default:
      return Colors.red;
  }
}

