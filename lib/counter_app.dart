import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({ Key? key }) : super(key: key);

  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {

  int count = 0;
  _onCountPressed() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
          "Counter $count App", 
          style: TextStyle(
          fontSize: SizerUtil.deviceType == DeviceType.web ? 4.sp : 16.sp),
        ),
        actions: [
          PopupMenuButton(
            onSelected: (value){
              print(value);
              if(value == 1) {
                print("Screen one");
              }else if (value == 2) {
                print("Screen two");
              }
            },
            elevation: 20,
            tooltip: "Popup menu",
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: Colors.orange,
                width: 2
              )
            ),
            offset: Offset(
              5.0, 56.0 
            ),
            icon: Icon(Icons.more_vert),
            itemBuilder: (BuildContext context){
              return [
                PopupMenuItem(
                  child: Text("Item 1"),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text("Item 2"),
                  value: 2,
                )
              ];
            }
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //  SizerUtil.deviceType == DeviceType.mobile ? Container(  // Widget for Tablet
          //     width: 50.w,
          //     height: 30.h,
          //     color: Colors.orange,
          //   ) : Container(
          //     width: 40.w,
          //     height: 20.h,
          //     color: Colors.orange,
          //   )


          Center(
            child: Text(
              "Incremment number is $count", 
              style: TextStyle(
              fontSize: 14.sp,
            ),
           ),
          )
          
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        hoverColor: Colors.pink,
        tooltip: "Any text",
        onPressed: (){
          _onCountPressed();
          // _showDialog(context);
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      // floatingActionButton: FloatingActionButton.extended(
      //   backgroundColor: Colors.orange,
      //   elevation: 10,
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(10),
      //     side: BorderSide(
      //       color: Colors.pink,
      //       width: 2
      //     )
      //   ),
      //   hoverColor: Colors.pink,
      //   tooltip: "Any text",
      //   onPressed: (){
      //     _showDialog(context);
      //   },
      //   label: Text("Add"),
      //   icon: Icon(Icons.add),
      // ),
    );
  }
}


_showDialog(BuildContext context) {
  showDialog(
    barrierDismissible: false,
    context: context, 
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Simple Alert dialog"),
        content: Text("This is body of the alert dialog"),
        actions: [
          TextButton(
            onPressed: (){}, 
            child: Text("Yes")
          ),
          TextButton(
            onPressed: (){
              Navigator.pop(context);
            }, 
            child: Text("No")
          )
        ],
      );
    }
  );
}