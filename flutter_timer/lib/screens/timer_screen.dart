//lib/screens/timer_screen.dart
import 'package:flutter/material.dart';

class TimerScreen extends StatefulWidget{
  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen>{
  @override
  Widget build(BuildContext context) {
    final List<Widget> _runningButtons = [
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent), 
        child: Text(
          1 == 2 ? '계속하기' : '일시정지', //일시정지 중? 계속하기 : 일시정지 
          style: TextStyle(color: Colors.white, fontSize: 16)),
      ),
      Padding(padding: EdgeInsets.all(20)),
      ElevatedButton(
        onPressed: () {}, 
        style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
        child: Text(
          '포기하기',
          style: TextStyle(fontSize: 16),
        ),
      ),
    ];
    final List<Widget> _stoppedButtons = [
      ElevatedButton(onPressed: () {}, 
      style: ElevatedButton.styleFrom(backgroundColor: 1 == 2 ? Colors.lightGreen : Colors.blueAccent), //휴식중? green : blue
      child: Text(
        '시작하기',
        style: TextStyle(color: Colors.white,
        fontSize: 16
      ),
      ))
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('뽀모도로 타이머'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: 1 == 2? Colors.lightGreen : Colors.blueAccent,
              ),
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.6,
              child: Center(
                child: Text(
                  '00:00',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: 1 == 2  //휴식중? 버튼 있 / 없 ,
                  ? const []
                  : 1 == 2 //정지? 정지중 버튼 : 작업중 버튼 
                      ? _stoppedButtons
                      : _runningButtons,
            )
          ],
        ),
      )
    );
  }
}