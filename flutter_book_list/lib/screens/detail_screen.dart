//lib/screens/detail_screen.dart
//세부 사항 출력 창
import 'package:flutter/material.dart';
import 'package:flutter_book_list/models/book.dart';

class DetailScreen extends StatelessWidget{
  final Book book;
  DetailScreen({
    required this.book
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title), //Book title (상단) 
      ),
      body: ListView(
        children: [
          Image.network(book.image),  //Book image
          Padding(padding: EdgeInsets.all(3),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8, //최대 한도가 전체 화면 width의 80%만 차지하도록 
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(book.title, 
                        style: TextStyle(
                          fontSize: 23, 
                          fontWeight: FontWeight.bold,
                        ),
                      ), //Book title
                    ),
                    Text(book.subtitle,
                    style: TextStyle(fontSize: 18, color: Colors.blueGrey)
                    ), //Book subtitle 
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.15,  //앞서 사용된 Container의 최대 width가 0.8이므로 합쳐서 1이 넘지 않도록 0.15로 설정 
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Icon(
                    Icons.star,
                    color: Colors.redAccent,
                   ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(3)
          ),
          Row(  //not available icon row 
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column( //call Icon not available
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                  Text('Contact', style: TextStyle(color: Colors.green),
                  )
                ],
              ),
              Column( //near route Icon not available
                children: [
                  Icon(
                    Icons.near_me,
                    color: Colors.red,
                  ),
                  Text('Route',
                  style: TextStyle(color: Colors.red),
                  )
                ],
              ),
              Column(   //save Icon not available
                children: [
                  Icon(
                    Icons.save,
                    color: Colors.blueAccent,
                  ),
                  Text('Save',
                  style: TextStyle(color: Colors.blueAccent),
                  )
                ], 
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(book.description),
          )
        ],
      )
    );
  }
}