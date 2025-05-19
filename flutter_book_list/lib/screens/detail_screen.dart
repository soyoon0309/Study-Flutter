//lib/screens/detail_screen.dart
//세부 사항 출력 창
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('OS? Oh Yes!'), //Book title (상단) 
      ),
      body: Column(
        children: [
          Image.network('https://shopping-phinf.pstatic.net/main_3249666/32496660939.20230704085307.jpg?type=w300'),  //Book image
          Padding(padding: EdgeInsets.all(3),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8, //사진 크기 0.8배 
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text('OS? Oh Yes!', 
                        style: TextStyle(
                          fontSize: 23, 
                          fontWeight: FontWeight.bold,
                        ),
                      ), //Book title
                    ),
                    Text('누워서 보는 운영체제 이야기',
                    style: TextStyle(fontSize: 18, color: Colors.blueGrey)
                    ), //Book subtitle 
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.15,
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Icon(
                    Icons.star,
                    color: Colors.redAccent,
                   ),
                ),
              )
            ],
          )
        ],
      )
    );
  }
}