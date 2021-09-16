

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "I'm poor", 
            style: TextStyle(
              color: Color(0xffff0000),
              fontSize: 28,
              fontWeight: FontWeight.w700,
              letterSpacing: 5,
            ),
          ),
        ),
        
        body: Container(
          height: double.infinity,
          color: Colors.pink,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.red,
                child: FlutterLogo(
                  size: 100,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.green,
                    child: FlutterLogo(
                      size: 100,
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    child: FlutterLogo(
                      size: 100,
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    child: FlutterLogo(
                      size: 100,
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.orange,
                child: FlutterLogo(
                  size: 100,
                ),
              )
            ],
          ),
        )
      );
  }
}

// Container(
//           width: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 color: Colors.red,
//                 child: FlutterLogo(
//                   size: 100,
//                 ),
//               ),
//               Container(
//                 color: Colors.green,
//                 child: FlutterLogo(
//                   size: 100,
//                 ),
//               ),
//               Container(
//                 color: Colors.orange,
//                 child: FlutterLogo(
//                   size: 100,
//                 ),
//               )
//             ],
//           ),
//         )