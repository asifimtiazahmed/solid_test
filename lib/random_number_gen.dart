import 'dart:math';
///This is just the class that provides the generated number values
///from 0 to 255
class RandomColorValue{

  ///This method will provide a generated value between 0 and 255.
  ///
  int generateValue(){
    final rnd = Random();
    return rnd.nextInt(255);
  }
}
