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
      body: ListView(
        children: [
          Image.network('https://shopping-phinf.pstatic.net/main_3249666/32496660939.20230704085307.jpg?type=w300'),  //Book image
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
            child: Text(
              '현재 컴퓨터는 개인적 용도로 사용되는 모바일용 PC로부터 시작하여 초고속 과학계산을 위한 슈퍼컴퓨터에 이르기까지, 크기와 가격 및 성능에 있어서 매우 다양한 종류의 컴퓨터들이 존재하고 있다. 그런데 흥미로운 점은 그러한 컴퓨터들의 기본 구조와 동작 원리는 거의 동일하다는 것이다. 본 저서에서는 컴퓨터 하드웨어의 기본 원리와 핵심 기술들을 이해하기 쉽도록 간결하게 설명하였으며, 컴퓨터의 성능을 높이기 위하여 최근에 새로이 개발된 멀티-코어 프로세서, GPU, DDR SDRAM 및 SSD를 포함한 각종 보조저장장치를 비롯한 첨단 컴퓨터 기술들에 대하여 전반적으로 소개하고 있다.'
            ),
          )
        ],
      )
    );
  }
}