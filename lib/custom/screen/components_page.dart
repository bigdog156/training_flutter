import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'dart:core';
import 'package:sophie/custom/base_widgets/Icon/icon_custom.dart';
import 'package:sophie/custom/base_widgets/base_widget.dart';
import 'package:sophie/custom/base_widgets/button/button_filter_chip.dart';
import 'package:sophie/custom/components/base_components.dart';
import 'package:sophie/custom/components/card_items/card_gender.dart';
import 'package:sophie/custom/components/list_items/ava_checkbox.dart';
import 'package:sophie/custom/components/list_items/ava_state_text.dart';
import 'package:sophie/custom/components/text_input/number_input.dart';

class ComponentPage extends StatefulWidget {
  @override
  _ComponentPageState createState() => _ComponentPageState();
}

class _ComponentPageState extends State<ComponentPage> {
  final input1 = TextEditingController();
  final input2 = TextEditingController();
  final input3 = TextEditingController();
  FocusNode myFocus1;
  FocusNode myFocus2;
  FocusNode myFocus3;


  @override
  void initState() {
    // TODO: implement initState
    myFocus1 = FocusNode();
    myFocus2 = FocusNode();
    myFocus3 = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    myFocus1.dispose();
    myFocus2.dispose();
    myFocus3.dispose();
    input1.dispose();
    input2.dispose();
    input3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              NumberInput(
                myNode: myFocus1,
                nextNode: myFocus2,
                controller: input1,
                autoFocus: true,
              ),
              NumberInput(
                myNode: myFocus2,
                nextNode: myFocus3,
                controller: input2,
              ),
              NumberInput(
                myNode: myFocus3,
                nextNode: myFocus3,
                controller: input3,
              )
            ],
          ),
          Container(
            width: 150,
            child: RaisedButton(
              color: Theme.of(context).primaryColor,
              padding: EdgeInsets.all(0),
              onPressed: () {
                String text =
                    input2.value.text + input1.value.text + input3.value.text;
                if (text.length == 3) {
                  print(text.length);
                  showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            title: Text("Submit success !"),
                          ));
                } else {
                  showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            title: Text(
                              "Invalid !!!",
                              style: TextStyle(color: Colors.red),
                            ),
                          ));
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Submit ",
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.check,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
