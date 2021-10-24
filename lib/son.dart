import 'package:demo_project/father.dart';
import 'package:demo_project/mother.dart';

class Son with Father, Mother{

  final int? roll;
  final String? name;

  Son({this.name, this.roll});
  
  int a = 20;
  int b = 4;

  showData() {
    print("Name: $name Roll: $roll");
  }


  division (){
    return a / b;
  }


  @override
  xyz() {
    print("Hello Super Class");
    int a = 30;
    int b = 90;
    print(a - b);
    return super.xyz();
  }

}