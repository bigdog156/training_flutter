import 'package:flutter/material.dart';
import 'package:sophie/chat/message.dart';
import 'package:sophie/chat/view/walkthrough/walkthrough.dart';
import 'package:sophie/chat/view/create_chat.dart';
import 'package:sophie/chat/view/splash/splash.dart';
import 'package:sophie/custom/custom_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: SophieColors.black,
      ),
      initialRoute: '/message',
      routes: {
        '/':(context) => CustomScreen(),
        '/message':(context) => Message(),
        '/walk_through':(context) => WalkThroughScreen(),
        '/create_chat':(context) => CreateChat(),
      },
//      home: Message(),
    );
  }
}

class SophieColors {
  SophieColors._(); // this basically makes it so you can instantiate this class

  static const _PrimaryValue = 0xFF2CB9B0;

  static const MaterialColor black = const MaterialColor(
    _PrimaryValue,
    const <int, Color>{
      50:  const Color(0xFF2CB9B0),
      100: const Color(0xFF2CB9B0),
      200: const Color(0xFF2CB9B0),
      300: const Color(0xFF2CB9B0),
      400: const Color(0xFF2CB9B0),
      500: const Color(_PrimaryValue),
      600: const Color(0xFF2CB9B0),
      700: const Color(0xFF2CB9B0),
      800: const Color(0xFF2CB9B0),
      900: const Color(0xFF2CB9B0),
    },
  );
}
