import '../base_widget.dart';
import 'package:sophie/custom/models/custom_data.dart';
import 'dart:math';

class AvatarIcon extends StatelessWidget {
  final double radius;
  final Icon icons;
  final Color color;
  final double radiusIcon;
  AvatarIcon({this.radius, this.icons, this.color, this.radiusIcon});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Stack(
        children: <Widget>[
          AvatarBorder(
            sizeBorder: 2,
            colorBorder: Colors.white,
            radiusAva: radius,
            imageProvider: NetworkImage(urlImageFinal),
          ),
          Padding(
              padding: EdgeInsets.only(
                  left: sqrt(radius * radius / 2) + radius - radiusIcon,
                  top: sqrt(radius * radius / 2) + radius - radiusIcon),
              child: IconCustom(
                size: radiusIcon*2,
                colorBorder: Colors.white,
                color: color,
                icon: icons,
                widthBorder: 2,
              ))
        ],
      ),
    );
  }
}
