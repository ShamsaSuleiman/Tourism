import 'package:flutter/material.dart';

void main()=>
    runApp(MaterialApp());
class Tanzanite extends StatefulWidget {
  const Tanzanite({Key? key}) : super(key: key);

  @override
  State<Tanzanite> createState() => _TanzaniteState();
}

class _TanzaniteState extends State<Tanzanite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body:ListView(
          children:[
      Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 10.0),
      child: Container(
        padding: EdgeInsets.only(top: 10.0),
        decoration: BoxDecoration(
          color: Colors.red.withOpacity(0.1),
        ),
        child: Text("5 DAYS ENTIRE ISLAND AND MAINLAND " ),

      ),
    ),
    ]



      ));
  }
}
