import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main()=>
    runApp(MaterialApp());
class Link extends StatefulWidget {
  const Link({Key? key}) : super(key: key);

  @override
  _LinkState createState() => _LinkState();
}

class _LinkState extends State<Link> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
    
    home: new Scaffold(
    appBar: new AppBar(
    title: new Text('UrlLauchner'),
    ),
    body: new Center(
    child: new RichText(
    text: new TextSpan(
    children: [
    new TextSpan(
    text: 'This is no Link, ',
    style: new TextStyle(color: Colors.black),
    ),
    new TextSpan(
    text: 'but this is',
    style: new TextStyle(color: Colors.blue),
    recognizer: new TapGestureRecognizer()
    ..onTap = () { launch('https://docs.flutter.io/flutter/services/UrlLauncher-class.html');
    },
    ),
    ],
    ),
    ),
    ),
    ),
    );
  }

  void launch(String s) {}
}
