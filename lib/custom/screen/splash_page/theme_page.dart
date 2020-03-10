import 'package:flutter/material.dart';
import '../styles.dart';
import 'package:sophie/custom/base_widgets/base_widget.dart';
class ThemSplashPage extends StatelessWidget {
  final BoxDecoration boxDecoration;
  final Widget btnRightTop;
  final Widget titleWidget;
  final Widget subText;
  final Widget content;
  ThemSplashPage({
    this.boxDecoration,
    this.btnRightTop,
    this.titleWidget,
    this.content,
    this.subText
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 60,
              right: 30,
              child: btnRightTop
            ),
            Positioned(
              top: 120,
              left: 30,
              width: 350,
              child: titleWidget
            ),
            Positioned(
              top: 260,
              left: 30,
              width: 250,
              child: subText
            ),
            Positioned(
              top: 330,
              left: 40,
              child: content,
            )
          ],
        ),
      ),
    );
  }

}

