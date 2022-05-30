import 'package:flutter/material.dart';
import 'package:testyy/hud.dart';
import 'package:testyy/link.dart';
import 'package:testyy/login.dart';
import 'package:testyy/signin.dart';
import 'package:testyy/sp.dart';
import 'package:testyy/splash.dart';
import 'package:testyy/try.dart';
import 'package:testyy/tz5days.dart';
import 'package:testyy/welcome.dart';

import 'Home.dart';
import 'Tanzanite.dart';
import 'firstpage.dart';
import 'jozani.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" inb the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
    );
  }
}



