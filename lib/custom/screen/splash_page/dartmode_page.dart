import 'package:flutter/material.dart';
import '../styles.dart';
import 'theme_page.dart';
import 'package:sophie/custom/base_widgets/base_widget.dart';

class DarkModePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemSplashPage(
      boxDecoration: BoxDecoration(
        color: Colors.white
      ),
      btnRightTop: ButtonText(
        onClick: (){
          Navigator.pushNamed(context, "/walk_through");
        },
        titleWidget: Text("Let's go", style: btnStyle(Colors.black),),
      ),
      titleWidget:  Text("Explore Dark Mode Interface",
        style: titleStyle(Colors.black),
      ),
      subText: Text(
        "Just endable the dark mode and be king to the nightmare world",
        style: TextStyle(color: Colors.black87),
      ),
      content: Container(
        child: Column(
          children: <Widget>[
            ButtonSwitch(),
            SizedBox( height: 20,),
            Image.asset("assets/iphoneMode.png")
          ],
        ),
      )
    );
  }
}
