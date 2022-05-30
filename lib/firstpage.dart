import 'package:flutter/material.dart';


class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {




    return Scaffold(
    appBar: AppBar(


    ),
    body: ListView(
    children: [
    Padding(
    padding: const EdgeInsets.only(top: 15.0, left: 85.0),
    child: Text(
    'ZANZIBAR TOURISM ',
    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 27.0),
    ),
    ),
    SizedBox(height: 25.0),
    Padding(
    padding: EdgeInsets.only(left: 15.0, right: 15.0),
    child: Container(
    padding: EdgeInsets.only(left: 15.0),
    decoration: BoxDecoration(
    color: Colors.grey.withOpacity(0.1),
    borderRadius: BorderRadius.circular(15.0)),
    child: TextField(
    decoration: InputDecoration(
    hintText: 'Search',
    hintStyle: TextStyle(fontSize: 14.0),
    border: InputBorder.none,
    fillColor: Colors.grey.withOpacity(0.5),
    prefixIcon: Icon(Icons.search, color: Colors.grey)),
    ),
    ),
    ),
    SizedBox(height: 40.400),

    Container(
    padding: const EdgeInsets.all(30),
    child: Image.asset(
    "images/kima.jpg",fit:BoxFit.fill,
    ),
    // color: Colors.lightBlueAccent,
    ),



    Container(
    padding: const EdgeInsets.all(30),

    child: Image.asset(
    "images/stonetown.jpg",fit:BoxFit.fill,
    //child: const Text("picture 4"),
    // color: Colors.lightBlueAccent,
    )
    ),
    Container(
    padding: const EdgeInsets.all(30),

    child: Image.asset(
    "images/verdee.jpg",fit:BoxFit.fill,
    //child: const Text("picture 4"),
    // color: Colors.lightBlueAccent,
    )
    ),
    Container(
    padding: const EdgeInsets.all(30),

    child: Image.asset(
    "images/prison.jpg",fit:BoxFit.fill,
    //child: const Text("picture 4"),
    // color: Colors.lightBlueAccent,
    )
    ),
    Container(
    padding: const EdgeInsets.all(30),

    child: Image.asset(
    "images/kizimkazi.gif",fit:BoxFit.fill,
    //child: const Text("picture 4"),
    // color: Colors.lightBlueAccent,
    )
    ),
    Container(
    padding: const EdgeInsets.all(30),

    child: Image.asset(
    "images/fumba.jpg",fit:BoxFit.fill,
    //child: const Text("picture 4"),
    // color: Colors.lightBlueAccent,
    )
    ),

    ]
    )


    );



    }

    }

