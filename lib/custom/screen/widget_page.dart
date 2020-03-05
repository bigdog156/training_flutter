import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sophie/custom/base_widgets/Icon/icon_custom.dart';
import 'package:sophie/custom/base_widgets/base_widget.dart';
import 'package:sophie/custom/base_widgets/button/button_filter_chip.dart';
import 'package:sophie/custom/components/base_components.dart';
import 'package:sophie/custom/components/list_items/ava_checkbox.dart';
import 'package:sophie/custom/components/list_items/ava_state_text.dart';

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
            showContainer(),
            showItem2(),
            showCard(),
            ButtonFilterChip(
              text: Text("Facebook"),
            ),
          ],
        ),
      ],
    );
  }

  Widget showCard() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20, right: 20, top: 30),
      child: Column(
        children: <Widget>[
          CardInfo(
            title: "Pepe Go",
            sub: "UI/UX Designer",
            colorSub: Colors.black38,
            radius: 30,
            imageProvider: AssetImage("assets/girl.jpg"),
            content:
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum",
          )
        ],
      ),
    );
  }

  Widget showWidget({Widget child}) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: child,
    );
  }

  Widget showItem2() {
    bool state = true;
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10),
          ButtonBase(
            title: "Join us, it's free",
            width: 300,
            height: 45,
            listColor: [Colors.white, Colors.white],
            colorText: Colors.black,
          ),
          SizedBox(height: 10),
          ItemBase(
              avatar: Container(
                child: TwoLine(
                  title: "Phone Call",
                  sub: "+84966951930",
                  state: ChangeState.online,
                  colorSub: Colors.black38,
                ),
              ),
              icon: ButtonCircle(
                size: 50,
                click: () {},
                icon: Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
              )
          ),
          SizedBox(height: 10),
          ItemBase(
            avatar: Container(
              child: Row(
                children: <Widget>[
                  IconCustom(
                    size: 50,
                    color: Colors.redAccent,
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 15,
                    ),
                    widthBorder: 0,
                    colorBorder: Colors.redAccent,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Delete account",
                    style: TextStyle(color: Colors.redAccent, fontSize: 20),
                  )
                ],
              ),
            ),
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 20),
          ButtonCustom(
            height: 45,
            width: 300,
            listColor: [Colors.white, Colors.white],
            content: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AvatarText(
                    title: "Continues as Micheal",
                    radius: 17.5,
                    imageProvider: AssetImage("assets/girl.jpg"),
                    icon: Icon(Icons.arrow_forward),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
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
          ),
          SizedBox(
            height: 10,
          ),
          AvatarTwoTextTime(
            title: "Pepe Go",
            sub: "Rồi chừng nào đi ...",
            state: ChangeState.online,
            time: "5m ago",
            isIconState: false,
          ),
          SizedBox(
            height: 10,
          ),
          AvatarTwoTextTime(
            state: ChangeState.online,
            time: "2m ago",
            title: "Pepe Go",
            sub: "Flutter go go ...",
            isIconState: true,
            colorSub: Colors.redAccent,
            icon: Icon(
              Icons.phone_missed,
              color: Colors.redAccent,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
