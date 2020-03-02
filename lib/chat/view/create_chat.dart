import 'package:flutter/material.dart';

class CreateChat extends StatefulWidget {
  @override
  _CreateChatState createState() => _CreateChatState();
}

class _CreateChatState extends State<CreateChat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset("assets/backgroup.png"),
            )
          ],
        ),
      ),
    );
  }
}
