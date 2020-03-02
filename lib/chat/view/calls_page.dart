import 'package:flutter/material.dart';
import 'package:sophie/chat/base_widget/base.dart';
import 'package:sophie/chat/models/calls.dart';
class CallsPage extends StatefulWidget {
  @override
  _CallsPageState createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: listCall.length,
        itemBuilder: (BuildContext context, int index){
          return Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20,),
                ItemCall(call: listCall[index]),
              ],
            ),
          );
        },
      ),
    );
  }
}
