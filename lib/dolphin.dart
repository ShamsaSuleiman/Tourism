import 'package:flutter/material.dart';
import 'package:testyy/tz5days.dart';

void main()=>
    runApp(MaterialApp());
class Dolphin extends StatefulWidget {
  const Dolphin({Key? key}) : super(key: key);

  @override
  State<Dolphin> createState() => _DolphinState();
}

class _DolphinState extends State<Dolphin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,0),
              child: Container(
                padding: EdgeInsets.only(top: 250.0),

                decoration:BoxDecoration(
                  image:DecorationImage(
                      image:AssetImage("images/pack4.jpg",),fit:BoxFit.fitHeight
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 5.0,bottom: 0.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Tz5days()));
                  },
                  child: new Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            width: 120.0,
                            height: 190.0,
                            decoration: new BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: new DecorationImage(
                                image: new ExactAssetImage('assets/pack4.jpg'),
                                fit: BoxFit.cover,
                              ),
                            )),

                        Container(
                          padding: EdgeInsets.all(1.0),
                          child: Column(
                              children: <Widget>[

                                Text('PACKAGE TYPE : CLASSIC'),

                                SizedBox(height: 10.0),
                                Text('PRICE : TZS63,000'),



                              ]
                          ),
                        ),
                      ]),
                )),
            Padding(
                padding: const EdgeInsets.only(top: 0.0, left: 15.0, right: 50.0,bottom: 1.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Tz5days()));
                  },
                  child: new Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            width: 120.0,
                            height: 190.0,
                            decoration: new BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: new DecorationImage(
                                image: new ExactAssetImage('assets/bandle3.jpeg'),
                                fit: BoxFit.cover,
                              ),
                            )),

                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                              children: <Widget>[

                                Text('PACKAGE TYPE : CLASSIC'),

                                SizedBox(height: 20.0),
                                Text('PRICE : TZS63,000'),



                              ]
                          ),
                        ),
                      ]),
                )),
            Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 5.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Tz5days()));
                  },
                  child: new Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            width: 120.0,
                            height: 190.0,
                            decoration: new BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: new DecorationImage(
                                image: new ExactAssetImage('assets/bandle3.jpeg'),
                                fit: BoxFit.cover,
                              ),
                            )),

                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                              children: <Widget>[

                                Text('PACKAGE TYPE : CLASSIC'),

                                SizedBox(height: 20.0),
                                Text('PRICE : TZS63,000'),



                              ]
                          ),
                        ),
                      ]),
                )),

          ]),
    );
  }
}
