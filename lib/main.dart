import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'views/pages/calc_page.dart';

void main() {
  runApp(MyCalc());
}

class MyCalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.white,
    ));

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calc Demo',
      theme: ThemeData(
        typography: Typography.material2018(),
      ),
      home: CalcPage(),
    );
  }
}
