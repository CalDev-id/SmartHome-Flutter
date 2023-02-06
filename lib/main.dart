import 'package:flutter/material.dart';
import 'package:ichi_app/SmartHouse/smart_house.dart';

import 'SmartHouse/smart_house.dart';

void main() {
  runApp(const MyApp());
}

// kerja disini

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      home: const SmartHome(),
    );
  }
}
