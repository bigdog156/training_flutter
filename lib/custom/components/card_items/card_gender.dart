import 'package:flutter/material.dart';

class CardGender extends StatefulWidget {

  final double height;
  final double width;
  final Widget icon;
  CardGender({ this.height, this.width, this.icon} );
  @override
  _CardGenderState createState() => _CardGenderState();
}

class _CardGenderState extends State<CardGender> {
  bool state;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: RaisedButton(

        onPressed: (){
          setState(() {
            state = !state;
          });
        },
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.check, color: Colors.white,),
            ),
            Container(
              child: widget.icon
            )
          ],
        ),
      ),
    );
  }
}
