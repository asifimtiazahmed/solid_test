import 'package:flutter/material.dart';
import 'package:solid_test/model/rgb_color.dart';

void main() {
  runApp(const MyApp());
}

/*MyApp is the primary widget that is run from main*/
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solid Soft Test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

///This is the homepage for the app
class HomePage extends StatefulWidget {
  ///by default this will be called
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color backgroundColor = Colors.white;
  Color textColor = Colors.black;
  void _updateColor() {
    setState(() {
      final RgbColor rgbColor = RgbColor();
      backgroundColor = Color.fromRGBO(
        rgbColor.red,
        rgbColor.green,
        rgbColor.blue,
        1,
      );
      textColor = backgroundColor.computeLuminance() > 0.5 ?
      Colors.black : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: backgroundColor,
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: _updateColor,
        child: Container(
          constraints: const BoxConstraints.expand(
            width: double.infinity,
            height: double.infinity,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello There',
                style: Theme.of(context).textTheme.headlineMedium
                    ?.copyWith(color: textColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
