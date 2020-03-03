import 'package:flutter/material.dart';

class AvatarBorder extends StatelessWidget{
  final ImageProvider imageProvider;
  final Color colorBorder;
  final double radiusAva;
  final double sizeBorder;
  AvatarBorder({
    this.imageProvider,
    this.radiusAva,
    this.colorBorder,
    this.sizeBorder
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: colorBorder,
            width: sizeBorder,
            style: BorderStyle.solid,
          )
      ),
      child: CircleAvatar(
        radius: radiusAva,
        backgroundImage: imageProvider,
      ),
    );
  }
}