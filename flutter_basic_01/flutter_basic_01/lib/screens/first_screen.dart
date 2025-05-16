//lib/screens.first_screen.dart
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is First Screen'),
            ElevatedButton(onPressed: () {}, child: Text('Go to Second Screen'))
          ],
        ),
      ),
    );
  }
}