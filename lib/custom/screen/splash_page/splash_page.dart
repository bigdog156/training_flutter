import 'package:flutter/material.dart';
import '../styles.dart';
import 'theme_page.dart';
import 'package:sophie/custom/base_widgets/base_widget.dart';
class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeSplashPage(
      boxDecoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF32D496),Color(0xFF2CB9B0) ],
          )
      ),
      btnRightTop:
        ButtonText(
          onClick: (){
            Navigator.pushNamed(context, "/splash_dartmode");
          },
          titleWidget: Text("Next", style: btnStyle(Colors.white),),
        ),
      titleWidget: Text("Let's Meet Sophie Chat",
        style: titleStyle(Colors.white),
      ),
      subText: Text(
        "Find your all friends in one place by signing the apps quick and easily",
        style: TextStyle(color: Colors.white),
      ),
      content: Image.asset("assets/iphone.png"),
    );
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF32D496),Color(0xFF2CB9B0) ],

          )
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 50,
              right: 30,
              child:
              ButtonText(
                onClick: (){
                  Navigator.pushNamed(context, "/splash_theme");
                },
                titleWidget: Text("Next", style: btnStyle(Colors.white),),
              ),
            ),
            Positioned(
              top: 120,
              left: 30,
              width: 400,
              child: Text("Let's Meet Sophie Chat",
                style: titleStyle(Colors.white),
              ),
            ),
            Positioned(
              top: 260,
              left: 30,
              width: 270,
              child: Text(
                "Find your all friends in one place by signing the apps quick and easily",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Positioned(
              top: 350,
              left: 40,
              child: Image.asset("assets/iphone.png"),
            )
          ],
        ),
      ),
    );
  }

}

