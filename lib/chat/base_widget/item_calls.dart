import 'package:flutter/material.dart';
import 'package:sophie/chat/models/calls.dart';
import 'base.dart';

class ItemCall extends StatelessWidget {
  final Calls call;

  ItemCall({@required this.call});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 64,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Avatar(call.user, 30),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.55,
            child: CallDetail(
              call: call,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width/5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.videocam,
                  size: 30,
                  color: Color(0xFF0CD99B),
                ),
                Icon(
                  Icons.phone,
                  size: 30,
                  color: Color(0xFF5E9FFF),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CallDetail extends StatelessWidget {
  final Calls call;

  CallDetail({this.call});

  @override
  Widget build(BuildContext context) {
    String callText =
        call.state ? "Last called ${call.time} ago" : "You missed a video call";
    // TODO: implement build
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                call.user.name,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight:
                        call.state ? FontWeight.normal : FontWeight.bold),
              ),
              SizedBox(
                width: 6,
              ),
              boolOnline(call.isOnline),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              Icon(
                call.state ? Icons.phone_forwarded : Icons.phone_missed,
                color: call.state ? Color(0xFF0CD99B): Colors.red,
                size: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                callText,
                style: TextStyle(fontSize: 15, color: call.state ? Colors.black26: Colors.red),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
