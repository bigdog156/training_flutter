
import 'package:sophie/custom/base_widgets/base_widget.dart';
import '../base_components.dart';

class AvatarText extends StatelessWidget{
  final ImageProvider imageProvider;
  final String title;
  final double radius;
  final Widget icon;
  AvatarText({
      this.imageProvider,
      this.title,
      this.radius,
      this.icon,
  }
);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ItemBase(
      avatar:  Row(
        children: <Widget>[
          AvatarBorder(
            colorBorder: Colors.grey,
            imageProvider: imageProvider,
            radiusAva: radius,
            sizeBorder: 0,
          ),
          Container(
            padding: EdgeInsets.only(left: 12),
            child: OneText400(text: title,)
          )
        ],
      ),
      icon: icon
    );
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      child: Row(
        children: <Widget>[
          AvatarBorder(
            colorBorder: Colors.grey,
            imageProvider: imageProvider,
            radiusAva: radius,
            sizeBorder: 0,
          ),
          Container(
            padding: EdgeInsets.only(left: 12),
            child: Text(title, style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w400
            ),),
          )
        ],
      ),
    );
  }
}

