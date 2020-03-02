import 'package:flutter/material.dart';
import 'package:sophie/chat/models/nodata.dart';

Widget noDataWidget(NoData noData){
  return Container(
    child: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 150),
          child: Image.asset(noData.imageUrl),
        ),
        Container(
          padding: EdgeInsets.only(top: 25),
          child: Text(noData.title, style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 23
          ),),
        ),
        Container(
          width: 250,
          padding: EdgeInsets.only(top: 15),
          child: Text(noData.content, style: TextStyle(
            color: Colors.black38,
          ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 15),
          child: Text(noData.endText, style: TextStyle(
            color: Colors.blue,
          ),),
        )
      ],
    ),
  );
}
//class ScreenNoChat extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return ;
//  }
//}