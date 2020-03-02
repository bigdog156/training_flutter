import 'package:flutter/material.dart';
import 'package:sophie/chat/base_widget/avatar.dart';
import 'package:sophie/chat/models/message_current.dart';
import 'package:sophie/chat/models/user.dart';

class ItemChat extends StatefulWidget {
  final MessageData mess;

  ItemChat({this.mess});

  @override
  _ItemChatState createState() => _ItemChatState();
}

class _ItemChatState extends State<ItemChat> {
  bool  borderState = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
//      color: Colors.grey[300],
      decoration: BoxDecoration(
        color: Color(0xFFFF6E6E),
      ),
//      width: MediaQuery.of(context).size.width * 1,
      height: 64,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Avatar(listUser[widget.mess.id], 30),
          ),
          GestureDetector(
            onLongPress: (){
              setState(() {
                borderState = !borderState;
                print(borderState);
              });
            },
            child: DefaultTextStyle(
              style: widget.mess.read? TextStyle(
                color: Colors.black,
              ):TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              child: Container(
                decoration:
                boxDecorationScroll(),
                child: Row(
                  children: <Widget>[

                    Container(
                        child: message(context, widget.mess)
                    ),
                    stateBoxCurrent(widget.mess.time + " ago"),
                  ],
                ),
              ),
            ),
          ),
          deleteBox()
        ],
      ),
    );
  }
}

Widget message(BuildContext context, MessageData mess) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.55,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Text(
                mess.name,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(width: 6,),
              boolOnline(mess.state),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          mess.message,
          style: TextStyle(fontSize: 15),
          overflow: TextOverflow.ellipsis,
        )
      ],
    ),
  );
}
Widget boolOnline(String state){
  if(state == "online"){
    return CircleAvatar(
      backgroundColor: Color(0xFF2CB9B0),
      radius: 5,
    );
  }
  return Container();
}
Widget stateBoxCurrent(String time) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    height: 64,
    width: 110,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: 10,
        ),
        Text(time),
      ],
    ),
  );
}
Widget deleteBox() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    height: 64,
    decoration: BoxDecoration(
      color: Color(0xFFFF6E6E),
    ),
    child: Center(
      child: Icon(Icons.delete, color: Colors.white,size: 30,),
    ),
  );
}
Border borderScroll() {
  return Border(
        top: BorderSide(
          color: Color(0xFFFF6E6E),
          width: 0.5,
        ),
        bottom: BorderSide(
          color: Color(0xFFFF6E6E),
          width: 0.5,
        ),
        right: BorderSide(
          color: Color(0xFFFF6E6E),
          width: 0.5,
        )
  );
}
BoxDecoration boxDecorationScrollBorder() {
  return BoxDecoration(
    color: Colors.white,
    border: Border(
        top: BorderSide(
          color: Color(0xFFFF6E6E),
          width: 0.5,
        ),
        bottom: BorderSide(
          color: Color(0xFFFF6E6E),
          width: 0.5,
        ),

    ),
    borderRadius: BorderRadius.only(
        topRight: Radius.circular(10),
        bottomRight: Radius.circular(10)
    ),
  );
}
BoxDecoration boxDecorationScroll() {
  return BoxDecoration(
    color: Colors.white,
//    border: Border.all(
//      width: 1,
//      color: Color(0xFFFF6E6E),
//    ),
    borderRadius: BorderRadius.only(
        topRight: Radius.circular(10),
        bottomRight: Radius.circular(10)
    ),
  );
}