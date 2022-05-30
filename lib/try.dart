import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main()=> runApp(MaterialApp());

class resultPage extends StatefulWidget {

  const resultPage({Key? key}) : super(key: key);



  @override
  _resultPageState createState() => _resultPageState();
}

class _resultPageState extends State<resultPage> {

  //declaration
  String url = "http://192.168.145.197:801/try/conn.php";
  //String url = "http://192.168.50.112/pdo/emp.php";
  String employees="";
  List<Map>employee=[];
  String emparray="";

  Future getwelcomeMessage() async{
    http.Response res = await http.get(Uri.parse(url)).then((value) {
      employees = value.body.toString();
      return value;
    });
    print(employees.length);
    return res.body;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("student Names"),
      ),

      body: Column(
          children: [
            Expanded(
                child: Container(
                    child: FutureBuilder(
                        future: getwelcomeMessage(),
                        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                          //Map message = jsonDecode(snapshot.data.toString());

                          List message;
                          try {
                            var s = '';
                            message = jsonDecode(snapshot.data.toString());
                          } catch (e) {
                            throw "error = $e \n \n \n \n \n ${snapshot.data
                                .toString()} \n \n \n \n";
                          }

                          return Center(
                            child: Column(
                              children: [
                                Text(
                                  "Message from $url = ",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),

                                Divider(),
                                Text(
                                  message.toString(),
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),

                                Divider(),
                                //Text("fname: " + message['fname'].toString()),


                              ], //child: Text("Welcome  student"),
                            ),
                          );

                          return ListView(

                          );

                        }
                    )
                )
            )
          ]
      ),

    );
  }
}