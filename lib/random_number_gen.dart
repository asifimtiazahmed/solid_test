import 'dart:math';
///This is just the class that provides the generated number values from 0 to 255
class RandomColorValue{

  ///This method will provide a generated value between 0 and 255.
  ///The seed is the date time in milliseconds so it is quite random
  ///even during initiation
  int generateValue(){
    final rnd = Random(DateTime.now().microsecond);
    return rnd.nextInt(255);
  }

}