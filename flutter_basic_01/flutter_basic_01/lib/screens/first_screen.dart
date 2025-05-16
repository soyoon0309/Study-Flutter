//lib/screens.first_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_basic_01/screens/second_screen.dart';

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
            ElevatedButton( style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
              onPressed: () {  //버튼이 눌렸을 때 실행할 내용
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) => SecondScreen(),
                  ),
                );  //button을 push하면 SecondScreen으로 화면이 전환되도록 함
            }, child: Text('Go to Second Screen', style: TextStyle(color: Colors.white)))
          ],
        ),
      ),
    );
  }
}