void main() {
  var result = checkEvenOdd(5);
  print(result);
}


checkEvenOdd(number){
  
  if(number == null || number.runtimeType == String || number.runtimeType == bool ) {
    return "Exception";
  }

  if(number % 2 == 0) {
    return "$number Number is Even";
  }else{
    return "$number Number is Odd";
  }
} 
  