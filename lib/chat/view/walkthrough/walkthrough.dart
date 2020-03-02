import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sophie/chat/models/user.dart';
import 'package:sophie/chat/share/btn_base.dart';
import 'package:sophie/chat/share/icon_avatar.dart';

class WalkThroughScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                print("Next Screen");
              },
              child: Container(
                padding: EdgeInsets.only(
                    top: 60, left: MediaQuery.of(context).size.width * 0.8),
                child: Text(
                  "Skip",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF37A1F6),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 120),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1521001387824-8ce95375a74e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80"),
                radius: 55,
              ),
            ),
            SizedBox(height: 30,),
            Container(
              child: Text(
                "All people one place",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              alignment: AlignmentDirectional.center,
              height: 60,
              width: 280,
              child: Text(
                "Find your all friends in one place by signing the app easily",
                textAlign: TextAlign.center,

                style: TextStyle(fontSize: 17, color: Colors.black54),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 44),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (int index){
                    return Container(
                      child: IconAvatar(urlImage: listUser[index].urlImage,radiusImage: 17.5,),
                    );
                  }),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, bottom: 130),
              child: Text(
                "More than 5M people using us",
                style: TextStyle(fontSize: 17, color: Colors.black54),
              ),
            ),
            BtnPress()
          ],
        ),
      ),
    );
  }
}
class BtnPress extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          GestureDetector(
            child: Container(
              width: 300,
              height: 45,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [Color(0xFF38EF7D),Color(0xFF2CB9B0)],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Text("Sync contact list", style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                  ),)
              ),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          GestureDetector(
            onTap: (){
              print("Click");
            },
            child: Container(
              width: 300,
              height: 45,
              decoration: BoxDecoration(
                color: Color(0xFFC8C7CC),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Text("Add from Facebook", style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                  ),)
              ),
            ),
          ),
        ],
      ),
    );
  }
}