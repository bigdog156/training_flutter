import 'package:flutter/material.dart';
import 'package:sophie/custom/base_widgets/base_widget.dart';

class TwoText extends StatelessWidget{
  final String title;
  final String sub;
  TwoText({this.title, this.sub});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black
            ),
          ),
          SizedBox(height: 5,),
          Text(
            sub,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54
            ),
            softWrap: true,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
class TwoTextCenter extends StatelessWidget{
  final String title;
  final String sub;
  TwoTextCenter({this.title, this.sub});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                fontSize: 18,
                color: Colors.black
            ),
          ),
          SizedBox(height: 5,),
          Text(
            sub,
            style: TextStyle(
                fontSize: 16,
                color: Colors.black54
            ),
          )
        ],
      ),
    );
  }
}