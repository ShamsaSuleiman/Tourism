import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:testyy/api.dart';
import 'package:testyy/firstpage.dart';
import 'package:testyy/packegas.dart';
import 'package:testyy/signin.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  Future login() async {
    var url = Uri.parse(appurl + "login.php");
    var response = await http.post(url,
        body: jsonEncode({
          "username": username.text,
          "password": password.text,
          "login":"login",
        }),
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json"
        });

    var data = json.decode(response.body);

    if (response.statusCode == 200) {
      print((data["status"]=="201").toString());
      if (data["status"] == "201") {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Firstpage()));
      }
    } else {
      print("req fail");
    }
  }
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
    ));

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            actions: <Widget>[],
            title: Text(""),
            backgroundColor: Colors.blue,
          ),
          SliverFixedExtentList(
            itemExtent: 80,
            delegate: SliverChildListDelegate([
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                ),
                child: const Text(
                  "LOGIN HERE",
                  style: TextStyle(fontSize: 32, color: Colors.blue),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(),
                child: Icon(
                  Icons.account_circle,
                  color: Colors.blue,
                  size: 100,
                ),
              ),
              Divider(),
              Container(
                width: 370,
                margin:
                EdgeInsets.only(left: 20, top: 10, bottom: 20, right: 20),
                child: TextField(
                  controller: username,
                  decoration: InputDecoration(
                    labelText: "UserName",
                    border: OutlineInputBorder(),
                    hintText: "Enter UserName",
                    prefixIcon: Icon(Icons.person),
                  ),
                  onChanged: (value){
                   // username = value;
                  },
                ),
              ),
              Container(
                width: 370,
                margin:
                EdgeInsets.only(left: 20, top: 10, bottom: 20, right: 20),
                child: TextField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    hintText: "Enter Password",
                    prefixIcon: Icon(Icons.lock),
                  ),
                  onChanged: (value){
                   // password = value;
                  },
                ),
              ),
              Container(
                height: 50,
                width: 300,
                margin:
                EdgeInsets.only(left: 20, top: 15, bottom: 10, right: 20),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Packegas()),
                    );
                    login();
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 300,
                margin:
                EdgeInsets.only(left: 20, top: 15, bottom: 10, right: 20),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signin()),
                    );
                  },
                  child: Text(
                    'Registered Here',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

}

