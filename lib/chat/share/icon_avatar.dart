import 'package:flutter/material.dart';
import 'package:sophie/chat/models/user.dart';

class IconAvatar extends StatelessWidget{
  final String urlImage;
  final double radiusImage;
  IconAvatar({this.urlImage, this.radiusImage});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: 2,
            style: BorderStyle.solid,
          )
      ),
      child: CircleAvatar(
        backgroundImage: NetworkImage(urlImage),
        radius: radiusImage,
      ),
    );
  }
}