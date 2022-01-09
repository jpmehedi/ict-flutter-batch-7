import 'package:flutter/material.dart';

class FlutterAnimation extends StatefulWidget {
    static const String path = "FlutterAnimation";
  const FlutterAnimation({ Key? key }) : super(key: key);

  @override
  State<FlutterAnimation> createState() => _FlutterAnimationState();
}

class _FlutterAnimationState extends State<FlutterAnimation> {
  bool isAnimated = false;
  double isOpacity = 1.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Animation"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // GestureDetector(
            //   onTap: (){
            //     setState(() {
            //       isAnimated =! isAnimated;
            //     });
            //   },
            //   child: AnimatedContainer(
            //     width: isAnimated ? 300 : 200,
            //     height:isAnimated? 300 :  200,
            //     color: isAnimated ? Colors.red : Colors.purple,
            //     curve: Curves.easeInOutBack,
            //     duration: Duration(seconds: 1),
            //     child: FlutterLogo(),
            //   ),
            // ),



            // Container(
            //   width: 300,
            //   height: 300,
            //   color: Colors.pink,
            //   child: AnimatedAlign(
            //     curve: Curves.easeInOutBack,
            //     alignment:isAnimated ? Alignment.topRight : Alignment.bottomLeft, 
            //     duration: Duration(seconds: 5),
            //     child: GestureDetector(
            //       onTap: (){
            //         setState(() {
            //           isAnimated = !isAnimated;
            //         });
            //       },
            //       child: FlutterLogo(size: 50,)
            //     ),
            //   ),
            // ),



            AnimatedOpacity(
              opacity: isOpacity, 
              duration: Duration(
                seconds: 5
              ),
              child: Container(
                width: 300,
                height: 300,
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 30,),






            ElevatedButton(
              onPressed: (){
                if(isOpacity == 1.0){
                  setState(() {
                    isOpacity = 0.0;
                  });
                }else{
                  setState(() {
                    isOpacity = 1.0;
                  });
                }
              },  
              child: Text("Click Me")
            )
          ],
        ),
      ),
    );
  }
}