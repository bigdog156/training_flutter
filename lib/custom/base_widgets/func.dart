import 'package:flutter/material.dart';
enum ChangeState {online, off, await, live}

Color changeState(ChangeState state){
  switch(state){
    case ChangeState.online:
      return Color(0xFF2CB9B0);
    case ChangeState.off:
      return Colors.grey;
    case ChangeState.await:
      return Color(0xFFF8C756);
    case ChangeState.live:
      return Colors.white;
    default:
      return Colors.red;
  }
}