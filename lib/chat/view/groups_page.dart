import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sophie/chat/base_widget/avatar.dart';
import 'package:sophie/chat/models/groups.dart';
import 'package:sophie/chat/models/nodata.dart';
import 'package:sophie/chat/share/share.dart';
import 'package:sophie/chat/models/calls.dart';
import 'package:sophie/chat/view/widget_nodata/no_data.dart';

class GroupsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int stg = 1;
    if(stg == 0){
      return noDataWidget(noGroup);
    }else{
      return GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 3 / 4,
        children: List.generate(listGroup.length+1, (int index) {
          if (index == 0) {
            return cardAdd();
          }
          return cardItem(context,listGroup[index-1]);
        }),
      );
    }
  }
}

Widget cardItem(BuildContext context,Group group) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric( horizontal: 10),
      child: Column(
        children: <Widget>[
          iconTopCard(group),
          SizedBox(
            height: MediaQuery.of(context).size.height/3*0.1,
          ),
          contentCard(group),
        ],
      ),
    ),
  );
}

Widget iconTopCard(Group group) {
  return Container(
    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Icon(
          Icons.star,
          color: group.urlAvatar.state == "online"? Color(0xFFF8C756) : Color(0xFFD1D1D1),
        ),
        Icon(
          Icons.more_vert,
          color: Color(0xFF566482),
        )
      ],
    ),
  );
}

Widget contentCard(Group group) {
  return Container(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Avatar(group.urlAvatar, 30.5),
        SizedBox(height: 10),
        Text(group.nameGroup, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),),
        Container(
          padding: EdgeInsets.only(top: 10),
          child: Center(
            child: Container(
              child: Stack(
                alignment: AlignmentDirectional.topEnd,
                children: List.generate(group.listUser.length, (int index){
                  double pa = index.toDouble() *19;
                  return Container(
                    padding: EdgeInsets.only(right: pa),
                    child: IconAvatar(urlImage: group.listUser[index].urlImage,radiusImage: 15,),
                  );
                }),
              ),
            ),
          )
        )
      ],
    ),
  );
}

Widget cardAdd() {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10),
      ),

      child: Center(
        child: GestureDetector(
          onTap: (){

          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xFFEFF1F2),
                    child: Icon(Icons.add),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text("Create New"),
            ],
          ),
        ),
      ),
    ),
  );
}

