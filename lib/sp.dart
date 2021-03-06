import 'package:flutter/material.dart';

class LClipOval extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
                child: Text(
                  "MY ZANZIBAR",
                  textAlign: TextAlign.center,
                )),
          ),
          SizedBox(
            height: 50,
          ),

          SizedBox(
            height: 50,
          ),
          ClipOval(
            child: Image.asset("images/verdee.jpg"),
          ),
        ],
      ),
    );
  }
}
/* ******************************************
*********************************************
*********************************************
              *** END***
*********************************************
*********************************************
****************************************** */

/* ******************************************
                 *** START***
****************************************** */

// import 'package:flutter/material.dart';
//
// class LClipOval extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Center(
//                 child: Text(
//                   "Based image height and width it automatically clips, if we want we can customize using clipper",
//                   textAlign: TextAlign.center,
//                 )),
//           ),
//           SizedBox(
//             height: 50,
//           ),
//           ClipOval(
//             child: Image.asset("image/img_1.png"),
//           ),
//           SizedBox(
//             height: 50,
//           ),
//           ClipOval(
//             child: Image.asset("image/img_3.jpg"),
//           ),
//         ],
//       ),
//     );
  //}
//}
/* ******************************************
*********************************************
*********************************************
              *** END***
*********************************************
*********************************************
****************************************** */

