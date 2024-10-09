
import 'package:solid_test/random_number_gen.dart';

///This is the Rgb model object that will instantiate and provide the RGB values
class RgbColor{
  ///the red color value
  int red = RandomColorValue().generateValue();
  ///the green color value
  int green = RandomColorValue().generateValue();
  ///the blue color value
  int blue = RandomColorValue().generateValue();

  ///this object will provide access to the individual color values
  RgbColor();

  @override
  String toString() {
    return "Red: $red, Green: $green, Blue: $blue ";
  }

}
