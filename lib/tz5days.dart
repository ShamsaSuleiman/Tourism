 import 'package:flutter/material.dart';
import 'package:testyy/payment.dart';

import 'login.dart';

void main()=>
    runApp(MaterialApp());
class Tz5days extends StatefulWidget {
  const Tz5days({Key? key}) : super(key: key);

  @override
  State<Tz5days> createState() => _Tz5daysState();
}

class _Tz5daysState extends State<Tz5days> {
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


          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 10.0),
            child: Container(
              padding: EdgeInsets.only(top: 10.0),
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.1),
              ),
              child: Text("Name/Category \n 05 days tour packages \n island and mainland "),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Container(
              padding: EdgeInsets.only(top: 10.0),
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.1),
              ),
              child: Text("Meal plan \n Continental meal \n starting from \n Duration \n 4 night / 5 days\n Tarrif Range 1000 - 56777 \n Package by:Sham Tours and Safari ltd "),

            ),
          ),
          IconButton(
              icon: const Icon(Icons.money),
              onPressed:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Payment()),
                );
              }
          ),
        ]
      )

    );
  }
}
