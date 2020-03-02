import 'package:flutter/material.dart';
import 'package:sophie/chat/view/calls_page.dart';
import 'package:sophie/chat/view/groups_page.dart';
import 'package:sophie/chat/view/message_page.dart';
import 'package:sophie/chat/view/test_widget.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  int currentIndexTab=1;

  var click = ScrollPhysics();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "All Chat",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.group_add,
                size: 30,
                  color: Colors.white
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/create_chat");
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.search,
                size: 30,
                  color: Colors.white
              ),
              onPressed: () {},
            )
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                  child: Text("Message",style: TextStyle(color: Colors.white),),
              ),
              Tab(
                child: Text("Group",style: TextStyle(color: Colors.white),),
              ),
              Tab(
                child: Text("Calls",style: TextStyle(color: Colors.white),),
              )
            ],
          ),
        ),
        body: TabBarView(
          physics: click,
          children: <Widget>[
            GestureDetector(
              onDoubleTap: () {
                setState(() {
                  click = NeverScrollableScrollPhysics();
                });
              },
                child: MessagePage()
            ),
            Container(
              padding: EdgeInsets.only(top: 20,left: 10,right: 10),
              color: Color(0xFFF5F6F6),
              child: GroupsPage(),
            ),
            Container(
              child: CallsPage(),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndexTab,
          onTap: (index) {
            setState(() {
              currentIndexTab= index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("", style: TextStyle(fontSize: 15),
              ),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat),
              title: Text(""),

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text(""),
            ),

          ],
        ),
      ),
    );
  }
}
