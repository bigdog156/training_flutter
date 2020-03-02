import 'package:sophie/custom/base_widget/color_icon.dart';
import 'base_widget.dart';
import 'package:sophie/custom/models/custom_data.dart';
import 'dart:math';
class CircleAvatarIcon extends StatelessWidget{
  final double radius;
  final Icon icons;
  final Color color;
  CircleAvatarIcon({this.radius, this.icons, this.color });
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
              padding: EdgeInsets.only(left: sqrt(radius*radius/2)+radius-20, top: sqrt(radius*radius/2)+radius-20),
              child: IconCustom(
                size: 40,
                colorBorder: Colors.white,
                color: color,
                icon: icons,
                widthBorder: 2,
              )
          )
        ],
      ),
    );
  }
}
