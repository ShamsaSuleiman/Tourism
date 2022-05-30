import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:testyy/firstpage.dart';

import 'api.dart';

class Hud extends StatefulWidget {
  Hud({Key? key}) : super(key: key);

  @override
  _HudState createState() => new _HudState();
}

class _HudState extends State<Hud> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
//API
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: username,
                      decoration: InputDecoration(
                          labelText: 'NAME',
                          prefixIcon: Icon(Icons.person),
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                    ),
                    Container(
                      height: 8,
                      color: Color.fromRGBO(255, 255, 255, 0.4),
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      controller: password,
                      decoration: InputDecoration(
                          labelText: 'PASSWORD',
                          prefixIcon: Icon(Icons.lock_open_rounded),
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                      obscureText: true,
                    ),

                    SizedBox(height: 20.0),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.green,
                      ),
                      width: 500.0,
                      child: TextButton(
                        onPressed: () {
                          login();
                        },
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montesarrat',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
