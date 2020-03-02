import 'package:flutter/material.dart';

class CustomScreen extends StatefulWidget {
  @override
  _CustomScreenState createState() => _CustomScreenState();
}

class _CustomScreenState extends State<CustomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Screen"),
        bottom: TabBar(
          tabs: <Widget>[
            Tab(
              text: "Widget",
            ),
            Tab(
              text: "Component",
            )
          ],
        ),
      ),
      body: Container(),
    );
  }
}
