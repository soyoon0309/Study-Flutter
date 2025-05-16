//lib/screens.second_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_basic_01/screens/third_screen.dart';

class SecondScreen extends StatelessWidget{
  final String screenData;
  SecondScreen({required this.screenData});
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
            }, child: Text('Go to First Screen')),
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) => ThirdScreen(screenData: 'Data from Second Screen\n' + screenData))
                );
              }, child: Text('Go to Third Screen'))
          ],
        ),
      ),
    );
  }
}