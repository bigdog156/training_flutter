import 'package:flutter/material.dart';
import 'package:sophie/custom/base_widgets/base_widget.dart';
//@immutable
class CardGender extends StatefulWidget {
//  @immutable
  bool state = false;
  final double height;
  final double width;
  final Widget icon;
  final String gender;
  CardGender({@required this.height,@required this.width, this.icon, this.gender} );

  @override
  _CardGenderState createState() => _CardGenderState();
}

class _CardGenderState extends State<CardGender> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed:
          (){
        setState(() {
         widget.state = !widget.state;
        });
      },
      padding: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      elevation: widget.state ? 3 : 0,
      child: Ink(
        decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10),
          color:  widget.state ? Colors.white70 : Color(0xFFF2F5F6),
          border: Border.all(
            color: Colors.black38,
            width: 0,
          ),
        ),
        height: widget.height,
        width: widget.width,
        child: Column(
          mainAxisSize: MainAxisSize.max  ,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 90, top: 10),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:widget.state ? Color(0xFF2CB9B0):Color(0xFFE5E5E5),

                ),
                child: Icon(Icons.check, size: 25,
                  color:widget.state ? Colors.white: Color(0xFFE5E5E5),),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: widget.icon,
            ),

            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(widget.gender, style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}