import 'package:flutter/material.dart';
import 'package:sophie/chat/share/btn_base.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            child: Image.network("https://images.unsplash.com/photo-1485043433441-db091a258e5a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 470,
            left: 20,
            right: 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Discover your nearby friends",
                  style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 260,
                    child: Text(
                        "Find your all friends in one place by signing the apps quick and easily",
                      style: TextStyle(color: Colors.white),

                    ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            GradientButton(
                                text:"Have account? Login",
                                boxDecorationCustom: greenGradient(),
                                onclick:(){
                                  print("Login");
                                }
                                ),
                            SizedBox(height: 14,),
                            WhileButton(
                              text: "Join us, its free",
                              boxDecorationCustom: choiceColor(Colors.white),
                              onclick: (){
                              },
                            )
                          ],
                        ),
                      ),
                    ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
