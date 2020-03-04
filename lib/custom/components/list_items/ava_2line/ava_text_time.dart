import 'package:flutter/material.dart';
import 'package:sophie/custom/base_widgets/avatar/ava_color.dart';
import 'package:sophie/custom/base_widgets/base_widget.dart';
import 'package:sophie/custom/base_widgets/text/two_text.dart';
import 'package:sophie/custom/components/base_components.dart';
import 'package:sophie/custom/components/list_items/ava_state_text.dart';

class AvatarTwoTextTime extends StatelessWidget{
  final String title;
  final String sub;
  final ChangeState state;
  final String time;
  AvatarTwoTextTime({this.state, this.time, this.title, this.sub});
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
          TwoText(title: title, sub: sub,)
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