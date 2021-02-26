import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto final modelos 1',
      theme: ThemeData(),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


