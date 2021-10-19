import 'package:demo_project/father.dart';

class Son extends Father{
  String? name;
  int? age;

  Son({this.age, this.name});

  int a = 20;
  int b = 4;

  about(){
    return "$name" + "$age";
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