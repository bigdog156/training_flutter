import 'package:sophie/custom/base_widgets/base_widget.dart';
import '../base_components.dart';

class AvatarStateText extends StatelessWidget{
  final String title;
  final double radius;
  final ChangeState state;
  final Widget icon;
  AvatarStateText({this.title,this.radius, this.state, this.icon});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ItemBase(
      avatar: Row(
        children: <Widget>[
          AvatarColor(
            radius: radius,
            state: state,
          ),
          Container(
            padding: EdgeInsets.only(left: 12),
            child: OneText400(text: title,)
          )
        ],
      ),
      icon: icon,
    );
  }
}