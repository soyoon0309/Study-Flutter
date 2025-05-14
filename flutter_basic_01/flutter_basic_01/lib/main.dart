import 'package:flutter/material.dart';

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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title; //클래스 생성 시에만 설정되고 이후 변경 X
  MyHomePage({required this.title});  //title을 무조건 함께 작성해야 함 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( //최상단 
        title: Text(
          this.title,
        ),  //title을 최상단 AppBar에 작성
      ),
      body: Center( //중간 컨텐츠
        child: Column(  //Column을 Center의 child로 지정해서 Column 안의 값이 화면 배치에서 Center에 위치하도록 함
          mainAxisAlignment: MainAxisAlignment.center, //세로 중앙정렬  (기본값이 start이므로 center로 확인)
        crossAxisAlignment: CrossAxisAlignment.start, //가로 왼쪽정렬 (기본값이 center이므로 start로 확인)
        children: [
          Text('1. First String', style: TextStyle(fontSize: 25)),
          Text('2. Second String', style: TextStyle(fontSize: 20)),
          Text('3. Third String', style: TextStyle(fontSize: 15)),
        ],
        ),
        //child: Image.asset('images/damgom_Img1.jpeg',
        //width: 250,
        //height: 250,
        //),
        //child: Image.network('https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA1MThfOTcg%2FMDAxNjUyODAwNTA4MzQ4.OX1vub2Aep92Yo0_abPuPLETrWKIp5kd2OkK2soJ5mgg.svrJ0DLOliNrod8u8maFQ2IkiA_HbYJDJuvDMS_ECxIg.JPEG.myqwer0524%2FIMG_3574.JPG&type=sc960_832',
        //width: 250,
        //height: 250,
        //),
        //child: Text('Hello, Text Widget!',
        //style: TextStyle(
        //  fontSize: 25,
        //  fontFamily: 'Bagel',
        //  color: Colors.green,
        //),
        ),
    );
  }
}