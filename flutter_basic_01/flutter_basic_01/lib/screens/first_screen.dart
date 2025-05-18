//lib/screens.first_screen.dart
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget{
  _FirstScreenState createState() => _FirstScreenState(); //State를 생성하고 이후 일을 State에 위임함 
}

class _FirstScreenState extends State<FirstScreen> {  //FirstScreen에 대한 State임을 <>안에 명시, _가 붙으면 State임을 알리는 관례적 표현 
  int count = 0;

  void increase() {
    setState(() {
      count += 1;
    });
  }

  void decrease() {
    setState(() {
      count -= 1;
    });
  }

  /*@override 
  void initState() {  //앞서 생성한 State를 초기화 하는 단계, 필수 override X
    // TODO: implement initState
    super.initState();
  }*/

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('카운터 앱'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('카운트: $count', style: TextStyle(fontSize: 25)),
            Padding(padding: EdgeInsets.all(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: decrease, child: Text('- 감소')),
                ElevatedButton(onPressed: increase, child: Text('+ 증가')),
              ],
            )
          ],
        ),
      ),
    );
  }

  /*@override
  void dispose() {  //사용된 위젯이 사라질 때 실행되는 단계 (사용하던 데이터를 정리해야 할 경우 사용, 필수 작성 X)
    // TODO: implement dispose
    super.dispose();
  }*/

}