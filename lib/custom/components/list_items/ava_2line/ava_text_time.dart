import 'package:flutter/material.dart';
import 'package:sophie/custom/base_widgets/base_widget.dart';
import 'package:sophie/custom/components/base_components.dart';

class AvatarTwoTextTime extends StatelessWidget{
  final String title;
  final String sub;
  final ChangeState state;
  final String time;
  final bool isIconState;
  final Widget icon;
  final Color colorSub;
  AvatarTwoTextTime({
    this.colorSub,
    this.state,
    this.time,
    this.title,
    this.sub,
    this.isIconState,
    this.icon,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ItemBase(
      avatar: Row(
        children: <Widget>[
          AvatarColor(
            state: state,
            radius: 30,
          ),
          SizedBox(width: 10,),
          isIconState ? TwoLine(title: title,
            state: state,
            sub: sub,
            icon: icon,
            colorSub: colorSub,
          ):
          TwoText(title: title, sub: sub),
        ],
      ),
      icon: Container(
        child: Text(time,
          style: TextStyle(
              fontSize: 12,
          ),
        ),
      ),
    );
  }
}