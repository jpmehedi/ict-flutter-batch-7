void main() {

  //List data = [];
  
//   Map<String, dynamic> student = <String, dynamic>{
    //key : value
//     "name": "Mehedi",
//     "age": 28,
//     "gender": "Male",
    
//   };
  
  
  List<Map<String, dynamic>> studentInfo = <Map<String, dynamic>>[
    
    {
    "name": "XYZ",
    "age": {
      "child": 10,
      "adult": 18,
      "old": 60
    },
    "gender": [
      "Male",
      "Female"
     ]
    },
        
    {
    "name": "Hasan",
    "age": 25,
    "gender": "Male",
    },
    
    {
    "name": "Mehedi",
    "age": 25,
    "gender": "Male",
    }
  
    
  ];
  
  print(studentInfo[0]["age"]["old"]);
  
  
 
  
//   print(student);
//   print(student.keys);
//   print(student.values);
  
  
//   student.remove("age");
  
//   student.addAll({"age": 28, "id": 12});
  
//   print(student.length);
  

//   student.clear();
  
//   student.updateAll({"id": 36});
  
//   student["id"] =  36;
  
//   print(student);
  
}


