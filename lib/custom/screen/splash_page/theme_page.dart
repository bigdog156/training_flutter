import 'package:flutter/material.dart';
import '../styles.dart';
import 'package:sophie/custom/base_widgets/base_widget.dart';
class ThemeSplashPage extends StatelessWidget {
  final BoxDecoration boxDecoration;
  final Widget btnRightTop;
  final Widget titleWidget;
  final Widget subText;
  final Widget content;
  ThemeSplashPage({
    this.boxDecoration,
    this.btnRightTop,
    this.titleWidget,
    this.content,
    this.subText
  });
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width ;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 60,
              right: w*0.1,
              child: btnRightTop
            ),
            Positioned(
              top: 120,
              left: w*0.1,
              width: 350,
              child: titleWidget
            ),
            Positioned(
              top: 260,
              left: w*0.1,
              width: 250,
              child: subText
            ),
            Positioned(
              top: 330,
              left: w*0.05,
              right: w*0.05,
              child: content,
            )
          ],
        ),
      ),
    );
  }

}

