import 'package:flutter/material.dart';

class TestWidget extends StatefulWidget {
  @override
  _TestWidgetState createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(
          children: List.generate(5, (int index){
            double pa = index.toDouble() *10;
            return Container(
              padding: EdgeInsets.only(left: pa),
              child: CircleAvatar(
                backgroundColor: Colors.yellow,
                radius: 20,
              ),
            );
          }),
        ),
      ),
    );
  }
}
