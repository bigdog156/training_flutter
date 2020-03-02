import 'package:flutter/material.dart';
import 'package:sophie/custom/base_widget/color_icon.dart';
import 'base_widget.dart';
import 'package:sophie/custom/models/custom_data.dart';
import 'dart:math';
class CircleAvatarIcon extends StatelessWidget{
  final double radius;
  final ChangeState state;
  CircleAvatarIcon(this.radius, this.state);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container (
      child: Stack(
        children: <Widget>[
          CircleAvatarBorder(
            sizeBorder: 2,
            colorBorder: Colors.white,
            radiusAva: radius,
            imageProvider: NetworkImage(urlImageFinal),
          ),
          Padding (
            padding: EdgeInsets.only(left: sqrt(radius*radius/2)+radius-6, top: sqrt(radius*radius/2)+radius-4),
            child:
            ColorIcon(2,6.5,Colors.white, this.state)
          )
        ],
      ),
    );
  }
}
