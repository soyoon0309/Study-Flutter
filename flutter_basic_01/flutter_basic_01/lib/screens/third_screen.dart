//lib/screens.second_screen.dart
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget{
  final String screenData;
  ThirdScreen({required this.screenData});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(screenData),
            OutlinedButton(onPressed: () {
              Navigator.of(context).pop();  //뒤로가기 기능
            }, child: Text('Go to Second Screen'))
          ],
        ),
      ),
    );
  }
}