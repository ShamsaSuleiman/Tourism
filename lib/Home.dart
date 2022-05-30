import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
        length:1,
        child:Scaffold(

            body: GridView.count(
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                primary:false,
                crossAxisCount:1,
                //     children:List.generate(100,(index){
                //       return GridTile(
                //       child: Card(
                //       clipBehavior:Clip.antiAlias,
                // elevation: 6.0,
                // child: Padding(
                // padding: const EdgeInsets.all(10),
                // child:Column(
                // children:<Widget>[
                //   Expanded(
                // child:Image.asset(
                // "images/hotel1.webp",
                // fit:BoxFit.cover,
                // ),
                // ),
                // Padding(
                // padding:EdgeInsets.all(10),
                // child:Text("forodhani park")
                // )
                // ]
                // )
                // ),
                //       ));}
                //       )

                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Image.asset(
                      "images/kendwa.jpg",fit:BoxFit.fill,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Image.asset(
                      "images/kima.jpg",fit:BoxFit.fill,
                    ),
                    // color: Colors.lightBlueAccent,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Image.asset(
                      "images/marhubi.jpg",fit:BoxFit.fill,
                    ),
                    //color: Colors.lightBlueAccent,
                  ),

                  Container(
                      padding: const EdgeInsets.all(8),

                      child: Image.asset(
                        "images/mangapwani.jpg",fit:BoxFit.fill,
                        //child: const Text("picture 4"),
                        // color: Colors.lightBlueAccent,
                      )
                  ),
                  Container(
                      padding: const EdgeInsets.all(8),

                      child: Image.asset(
                        "images/stonetown.jpg",fit:BoxFit.fill,
                        //child: const Text("picture 4"),
                        // color: Colors.lightBlueAccent,
                      )
                  ),
                  Container(
                      padding: const EdgeInsets.all(8),

                      child: Image.asset(
                        "images/verdee.jpg",fit:BoxFit.fill,
                        //child: const Text("picture 4"),
                        // color: Colors.lightBlueAccent,
                      )
                  ),
                  Container(
                      padding: const EdgeInsets.all(8),

                      child: Image.asset(
                        "images/prison.jpg",fit:BoxFit.fill,
                        //child: const Text("picture 4"),
                        // color: Colors.lightBlueAccent,
                      )
                  ),
                  Container(
                      padding: const EdgeInsets.all(8),

                      child: Image.asset(
                        "images/kizimkazi.gif",fit:BoxFit.fill,
                        //child: const Text("picture 4"),
                        // color: Colors.lightBlueAccent,
                      )
                  ),
                  Container(
                      padding: const EdgeInsets.all(8),

                      child: Image.asset(
                        "images/fumba.jpg",fit:BoxFit.fill,
                        //child: const Text("picture 4"),
                        // color: Colors.lightBlueAccent,
                      )
                  ),
                  Container(
                      padding: const EdgeInsets.all(8),

                      child: Image.asset(
                        "images/safariblue.jpg",fit:BoxFit.fill,
                        //child: const Text("picture 4"),
                        // color: Colors.lightBlueAccent,
                      )
                  ),
                ]
            )


    )
    )
    );

  }

}
