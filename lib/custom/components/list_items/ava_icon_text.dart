import 'package:sophie/custom/base_widgets/base_widget.dart';
import '../base_components.dart';

class AvatarIconText extends StatelessWidget {
  final ImageProvider imageProvider;
  final String title;
  final double radius;
  final ChangeState state;
  final Icon icon;
  final double radiusIcon;

  AvatarIconText({
    this.imageProvider,
    this.title,
    this.radius,
    this.state,
    this.icon,
    this.radiusIcon,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      child: Row(
        children: <Widget>[
          AvatarIcon(
            radius: radius,
            color: changeState(state),
            radiusIcon: radiusIcon,
            icons: icon,
          ),
          Container(
            padding: EdgeInsets.only(left: 12),
            child: OneText400(
              text: title,
            ),
          )
        ],
      ),
    );
  }
}
