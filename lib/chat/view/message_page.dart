import 'package:flutter/material.dart';
import 'package:sophie/chat/models/nodata.dart';
import 'package:sophie/chat/models/user.dart';
import 'package:sophie/chat/base_widget/base.dart';
import 'package:sophie/chat/models/message_current.dart';
import 'package:sophie/chat/view/widget_nodata/no_data.dart';

class MessagePage extends StatelessWidget {
  final int stg = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if( stg == 1){
      return noDataWidget(noChat);
    }
    else{
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: ListView(
          children: <Widget>[
            Container(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  addStory(),
                  Mess(),
                ],
              ),
            ),
            //List chat users
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: listMessage.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: <Widget>[
                      ItemChat(
                        mess: listMessage[index],
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  );
                }),
          ],
        ),
      );
    }
    }
}


class Mess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 20),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: listUser.length,
        itemBuilder: (BuildContext context, int index) {
          RegExp re = new RegExp(r'(\w+)');
          Match firstMatch = re.firstMatch(listUser[index].name);
          String lastName =
              listUser[index].name.substring(firstMatch.start, firstMatch.end);

          return Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.blue,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: Avatar(listUser[index], 30),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      lastName,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}

Widget addStory() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
    child: Column(
      children: <Widget>[
        CircleAvatar(
          radius: 32,
          backgroundColor: Colors.grey[200],
          child: Center(
            child: Icon(
              Icons.add,
              size: 30,
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "Your story",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ],
    ),
  );
}
