import 'package:flutter/material.dart';
import 'package:sophie/custom/base_widgets/Icon/icon_color.dart';
import '../base_widget.dart';

class TwoLine extends StatelessWidget{
  final String title;
  final String sub;
  final Color colorSub;
  final ChangeState state;
  final Icon icon;
  TwoLine({this.title, this.sub, this.state, this.icon, this.colorSub});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              OneText400(text: title),
              ColorIcon(
                radiusIcon: 6,
                widthBorder:3,
                borderColor: Colors.white,
                state: state,
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(right: 5),
                child: icon,
              ),
              Text(sub,
                style: TextStyle(
                  color: colorSub,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}