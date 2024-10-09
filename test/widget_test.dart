// This is a basic Flutter widget test.
//
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:solid_test/main.dart';
import 'package:solid_test/model/rgb_color.dart';
import 'package:solid_test/random_number_gen.dart';

void main() {
  testWidgets('Testing text is there', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    expect(find.byKey(const Key("gestureDetectorMain")), findsOneWidget);
    // Verify that the text is there
    expect(find.text('Hello there'), findsOneWidget);

  });

  test('Color number generator test',(){

    for(int i=0; i<=50; i++) {
      final colorNumber = RandomColorValue().generateValue();
      expect(colorNumber >= 0, true);
      expect(colorNumber <= 255, true);
    }
  });

  test('Checking RGB color class object', (){
    final rgbColorObject = RgbColor();
    expect(rgbColorObject.red >= 0 && rgbColorObject.red <= 255, true);
    expect(rgbColorObject.green >= 0 && rgbColorObject.green <= 255, true);
    expect(rgbColorObject.blue >= 0 && rgbColorObject.blue <= 255, true);
    debugPrint(rgbColorObject.toString());
  });
}
