import 'package:flutter/material.dart';
import 'package:sophie/custom/base_widgets/base_widget.dart';
import 'package:sophie/custom/base_widgets/Icon/icon_custom.dart';
import 'package:sophie/custom/components/base_components.dart';
import 'package:sophie/custom/components/list_items/ava_checkbox.dart';
import 'package:sophie/custom/components/list_items/ava_state_text.dart';
import 'package:sophie/custom/models/custom_data.dart';

class WidgetPage extends StatefulWidget {
  @override
  _WidgetPageState createState() => _WidgetPageState();
}

class _WidgetPageState extends State<WidgetPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Column(
          children: <Widget>[
            showWidget(
              child: ButtonBase(
                title: "List Item",
                width: 300,
                height: 45,
                listColor: [Colors.green, Colors.yellow],
              ),
            ),
            showContainer()
          ],
        ),
      ],
    );
  }

  Widget showWidget({Widget child}) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: child,
    );
  }

  Widget showContainer() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AvatarText(
            title: "Taylor Swift",
            imageProvider: AssetImage("assets/girl.jpg"),
            radius: 30,
            icon: Icon(Icons.more_vert),
          ),
          SizedBox(
            height: 10,
          ),
          AvatarIconText(
            radiusIcon: 15,
            radius: 30,
            imageProvider: AssetImage("assets/girl.jpg"),
            title: "Harry Potter",
            state: ChangeState.online,
            icon: Icon(
              Icons.camera_alt,
              size: 15,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          AvatarStateText(
            title: "Sirius Black",
            radius: 30,
            state: ChangeState.online,
            icon: Icon(Icons.more_vert),
          ),
          SizedBox(
            height: 10,
          ),
          AvatarCheckbox(
            title: "Click me",
            radius: 30,
            state: ChangeState.off,
          )
        ],
      ),
    );
  }
}
