import 'package:flutter/material.dart';
import 'package:testyy/tanzanite%20packegas.dart';

import 'jozani.dart';

void main()=>
    runApp(MaterialApp());
class Packegas extends StatefulWidget {
  const Packegas({Key? key}) : super(key: key);

  @override
  State<Packegas> createState() => _PackegasState();
}

class _PackegasState extends State<Packegas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(

    backgroundColor: Colors.green,

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


          ),
          const SizedBox(height: 30,
            child: Text("Tanzanite package",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.center),
          ),


          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Tanzanite()),
              );

            },
            child:Container(
              height: 270,
              padding: const EdgeInsets.fromLTRB(30,200,0,0),

              decoration:BoxDecoration(
                image:DecorationImage(
                    image:AssetImage("images/pack4.jpg",),fit:BoxFit.fitHeight
                ),
              ),

              //
              // color: Colors.lightBlueAccent,
            ),
          ),
          SizedBox(height: 5,),
          Container(
            alignment:Alignment.centerRight,
            height: 40,
            //  padding:EdgeInsets.fromLTRB(0, 0, 10, 20),
            //color:Colors.red,
            child:RaisedButton(
              child:Text("Details"),
              color:Colors.blue,
              textColor:Colors.white,
              onPressed: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Tanzanite()),
                );



              },
            ),
          ),
          const SizedBox(height: 30,
            child: Text("Diamond packegas",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.center),
          ),


          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Tanzanite()),
              );

            },
            child:Container(
              height: 270,
              padding: const EdgeInsets.fromLTRB(30,200,0,0),
              child:Text("Jozani Forest",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.left),
              decoration:BoxDecoration(
                image:DecorationImage(
                    image:AssetImage("images/pack1.webp",),fit:BoxFit.fitHeight
                ),
              )
              //
              // color: Colors.lightBlueAccent,
            ),
          ),
          SizedBox(height: 5,),
          Container(
            alignment:Alignment.centerRight,
            height: 40,
            //  padding:EdgeInsets.fromLTRB(0, 0, 10, 20),
            //color:Colors.red,
            child:RaisedButton(
              child:Text("Details"),
              color:Colors.blue,
              textColor:Colors.white,
              onPressed: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Tanzanite()),
                );



              },
            ),
          ),
          const SizedBox(height: 30,
            child: Text("Gold package",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.center),
          ),


          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Tanzanite()),
              );

            },
            child:Container(
              height: 270,
              padding: const EdgeInsets.fromLTRB(30,200,0,0),
              child:Text("Jozani Forest",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.left),
              decoration:BoxDecoration(
                image:DecorationImage(
                    image:AssetImage("images/pack2.jpg",),fit:BoxFit.fitHeight
                ),
              ),

              //
              // color: Colors.lightBlueAccent,
            ),
          ),
          SizedBox(height: 5,),
          Container(
            alignment:Alignment.centerRight,
            height: 40,
            //  padding:EdgeInsets.fromLTRB(0, 0, 10, 20),
            //color:Colors.red,
            child:RaisedButton(
              child:Text("Details"),
              color:Colors.blue,
              textColor:Colors.white,
              onPressed: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Tanzanite()),
                );



              },
            ),
          ),
          const SizedBox(height: 30,
            child: Text("Dolphin package",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.center),
          ),


          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Tanzanite()),
              );

            },
            child:Container(
              height: 270,
              padding: const EdgeInsets.fromLTRB(30,200,0,0),
              child:Text("Jozani Forest",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.left),
              decoration:BoxDecoration(
                image:DecorationImage(
                    image:AssetImage("images/pack3.webp",),fit:BoxFit.fitHeight
                ),
              ),

              //
              // color: Colors.lightBlueAccent,
            ),
          ),
          SizedBox(height: 5,),
          Container(
            alignment:Alignment.centerRight,
            height: 40,
            //  padding:EdgeInsets.fromLTRB(0, 0, 10, 20),
            //color:Colors.red,
            child:RaisedButton(
              child:Text("Details"),
              color:Colors.blue,
              textColor:Colors.white,
              onPressed: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Tanzanite()),
                );



              },
            ),
          ),
          const SizedBox(height: 30,
            child: Text("Urojo package",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.center),
          ),


          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Tanzanite()),
              );

            },
            child:Container(
              height: 270,
              padding: const EdgeInsets.fromLTRB(30,200,0,0),
              child:Text("Jozani Forest",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.left),
              decoration:BoxDecoration(
                image:DecorationImage(
                    image:AssetImage("images/pack5.jpg",),fit:BoxFit.fitHeight
                ),
              ),

              //
              // color: Colors.lightBlueAccent,
            ),
          ),
          SizedBox(height: 5,),
          Container(
            alignment:Alignment.centerRight,
            height: 40,
            //  padding:EdgeInsets.fromLTRB(0, 0, 10, 20),
            //color:Colors.red,
            child:RaisedButton(
              child:Text("Details"),
              color:Colors.blue,
              textColor:Colors.white,
              onPressed: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Tanzanite()),
                );



              },
            ),
          ),






        ]
    ),
    );

  }

}

