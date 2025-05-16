import 'package:flutter/material.dart';
import 'package:flutter_basic_01/screens/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
      ),
      home: FirstScreen(),
    );
  }
}

