import 'package:flutter/material.dart';
import 'package:sophie/custom/models/custom_data.dart';
import 'package:sophie/custom/screen/widget_page.dart';
class CustomScreen extends StatefulWidget {
  @override
  _CustomScreenState createState() => _CustomScreenState();
}

class _CustomScreenState extends State<CustomScreen> {
  int currentIndexTab=1;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
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
              onPressed: () {},
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
                child: Text("Widgets",style: TextStyle(color: Colors.white),),
              ),
              Tab(
                child: Text("Components",style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            WidgetPage(),
            Container()
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
