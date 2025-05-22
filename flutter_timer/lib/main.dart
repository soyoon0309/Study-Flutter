//lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_timer/screens/timer_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //교재에는 없지만 우선 추가 (없으면 test에서 error남남)
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book List APP',
      home: TimerScreen(),
    );
  }
}