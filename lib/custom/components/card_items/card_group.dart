//import 'package:flutter/material.dart';
//import 'package:sophie/custom/base_widgets/avatar/ava_border.dart';
//
//class GroupsPage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    final int stg = 1;
//      return GridView.count(
//        crossAxisCount: 2,
//        childAspectRatio: 4 / 4,
//        children: List.generate(listGroup.length+1, (int index) {
//          if (index == 0) {
//            return cardAdd();
//          }
//          return cardItem(listGroup[index-1]);
//        }),
//      );
//    }
//}
//
//Widget cardItem(Group group) {
//  return Padding(
//    padding: const EdgeInsets.all(5.0),
//    child: Container(
//      decoration: BoxDecoration(
//        color: Color(0xFFFFFFFF),
//        borderRadius: BorderRadius.circular(10),
//      ),
//      padding: EdgeInsets.symmetric( horizontal: 10),
//      child: Column(
//        children: <Widget>[
//          iconTopCard(group),
//          contentCard(group),
//        ],
//      ),
//    ),
//  );
//}
//
//Widget iconTopCard(Group group) {
//  return Container(
//    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
//    child: Row(
//      mainAxisAlignment: MainAxisAlignment.spaceBetween,
//      children: <Widget>[
//        Icon(
//          Icons.star,
//          color: group.urlAvatar.state == "online"? Color(0xFFF8C756) : Color(0xFFD1D1D1),
//        ),
//        Icon(
//          Icons.more_vert,
//          color: Color(0xFF566482),
//        )
//      ],
//    ),
//  );
//}
//
//Widget contentCard(Group group) {
//  return Container(
//    child: Column(
//      mainAxisSize: MainAxisSize.min,
//      children: <Widget>[
//        Avatar(group.urlAvatar, 30.5),
//        SizedBox(height: 10),
//        Text(group.nameGroup, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),),
//        Container(
//            padding: EdgeInsets.only(top: 10),
//            child: Center(
//              child: Container(
//                child: Stack(
//                  alignment: AlignmentDirectional.topEnd,
//                  children: List.generate(group.listUser.length, (int index){
//                    double pa = index.toDouble() *19;
//                    return Container(
//                      padding: EdgeInsets.only(right: pa),
//                      child: AvatarBorder(urlImage: group.listUser[index].urlImage,radiusImage: 15,),
//                    );
//                  }),
//                ),
//              ),
//            )
//        )
//      ],
//    ),
//  );
//}
//
//Widget cardAdd() {
//  return Padding(
//    padding: const EdgeInsets.all(5.0),
//    child: Container(
//      decoration: BoxDecoration(
//        color: Color(0xFFFFFFFF),
//        borderRadius: BorderRadius.circular(10),
//      ),
//
//      child: Center(
//        child: GestureDetector(
//          onTap: (){
//
//          },
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Stack(
//                children: <Widget>[
//                  CircleAvatar(
//                    radius: 30,
//                    backgroundColor: Color(0xFFEFF1F2),
//                    child: Icon(Icons.add),
//                  ),
//                ],
//              ),
//              SizedBox(height: 15),
//              Text("Create New"),
//            ],
//          ),
//        ),
//      ),
//    ),
//  );
//}
//
