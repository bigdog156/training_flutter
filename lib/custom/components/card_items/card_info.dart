import 'package:flutter/material.dart';
import 'package:sophie/custom/base_widgets/avatar/ava_border.dart';
import 'package:sophie/custom/base_widgets/base_widget.dart';
import 'package:sophie/custom/components/base_components.dart';

class CardInfo extends StatelessWidget{
  final String title;
  final String sub;
  final Color colorSub;
  final String content;
  final ImageProvider imageProvider;
  final double radius;
  CardInfo({
    this.content,
    this.radius,
    this.title,
    this.sub,
    this.colorSub,
    this.imageProvider,
});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              children: <Widget>[
                AvatarBorder(
                  imageProvider: imageProvider,
                  colorBorder: Colors.white,
                  sizeBorder: 0,
                  radiusAva: radius,
                ),
                SizedBox(width: 10,),
                TwoText(
                  title: title,
                  sub: sub,
                )
              ],
            ),
          ),
          Divider(color: Colors.black,),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(content, style: TextStyle(
              color: Colors.black54,
              fontSize: 16,
            ),),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xFFF9F9F9),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TwoTextCenter(title: "981",sub: "Public Post",),
                TwoTextCenter(title: "142584", sub: "Followers",),
                TwoTextCenter(title: "8123",sub: "Following",)
              ],
            ),
          ),
        ],
      ),
    );
  }
}