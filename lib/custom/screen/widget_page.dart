import 'package:flutter/material.dart';
import 'package:sophie/custom/base_widget/base_widget.dart';
import 'package:sophie/custom/base_widget/color_icon.dart';
import 'package:sophie/custom/base_widget/icon_custom.dart';
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            GradientButton(
              boxDecorationCustom: greenGradient(),
              text: "Circle Avatar",
              onclick: () {
                print("lal");
              },
            ),
            MaterialButton(
              onPressed: (){},
              highlightColor: Colors.red,
              minWidth: 100,
              color: Colors.green,
              shape: StadiumBorder(),
              textColor: Colors.white,

              child: Text("HEHEHE"),
            ),
            showWidget(
                child: CircleAvatarBorder(
              imageProvider: NetworkImage(urlImageFinal),
              radiusAva: 50,
              colorBorder: Colors.white,
              sizeBorder: 2,
            )),
            showWidget(
                child: CircleAvatarBorder(
              imageProvider: NetworkImage(urlImageFinal),
              radiusAva: 50,
              colorBorder: Colors.green,
              sizeBorder: 5,)
            ),
            showWidget(child: CircleAvatarCustom(40, ChangeState.online)),
            showWidget(child: CircleAvatarCustom(40, ChangeState.await)),
            showWidget(child: CircleAvatarCustom(40, ChangeState.off)),
            showWidget(child: IconCustom(
              color: Color(0xFF2CB9B0),
              size: 50,
              colorBorder: Colors.black,
              widthBorder: 3,
              icon: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            )),
            showWidget(child: CircleAvatarIcon(
              radius: 55,
              icons: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
              color: Color(0xFF2CB9B0),
            )),

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
}
