import 'package:sophie/custom/base_widgets/Icon/icon_color.dart';
import '../base_widget.dart';
import 'package:sophie/custom/models/custom_data.dart';
import 'dart:math';
class AvatarColor extends StatelessWidget{
  final double radius;
  final ChangeState state;
  AvatarColor({this.radius, this.state});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container (
      child: Stack(
        children: <Widget>[
          AvatarBorder(
            sizeBorder: 2,
            colorBorder: Colors.white,
            radiusAva: radius,
            imageProvider: NetworkImage(urlImageFinal),
          ),
          Padding (
            padding: EdgeInsets.only(left: sqrt(radius*radius/2)+radius-6, top: sqrt(radius*radius/2)+radius-4),
            child:
            ColorIcon(
              state: state,
              widthBorder: 2,
              radiusIcon: 6.5,
              borderColor: Colors.white,
            )
          )
        ],
      ),
    );
  }
}
