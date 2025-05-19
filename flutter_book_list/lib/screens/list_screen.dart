//lib/screens/list_screen.dart
//기본 화면
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('도서 목록 앱'),
      ),
      body: ListView(
        children: <Widget>[
          BookTile( //ListView의 한 줄 
            title: '리눅스 시스템 원리와 실제',
            subtitle: '리눅스 시스템 원리와 실제',
            description: '오늘날 리눅스 시스템은 스마트폰, 태블릿, PC, 서버 및 슈퍼컴퓨터에 이르기까지 컴퓨팅 전반에서 많이 사용되고 있습니다. 이제 가정과 기업에서 리눅스 사용이 증가함에 따라 그 중요성 역시 증가하고 있습니다. 소비자 시장에서 리눅스의 가장 대표적인 성공 사례는 안드로이드로 리눅스를 기반으로 만들어진 안드로이드는 스마트폰의 가장 지배적인 운영체제가 되었습니다. 이러한 환경에서 이제 리눅스 시스템에 대한 이해와 활용 능력은 소프트웨어 경쟁력의 핵심이 되고 있습니다.',
            image: 'https://shopping-phinf.pstatic.net/main_3244207/32442078638.20230919122228.jpg?type=w300',
          ),
          BookTile(
            title: '4차 산업혁명 시대의 이산수학',
            subtitle: '4차 산업혁명 시대의 이산수학',
            description: '날로 발전하는 과학기술과 공학적 응용의 핵심은 수학일 것이다. 우리는 수학을 통하여 해결하고자 하는 복잡한 문제들을 추상화(abstraction)하며, 논리적으로 엄밀하게 판단하고, 정확한 방법으로 모델링(modeling) 할 수 있다.',
            image: 'https://shopping-phinf.pstatic.net/main_3246666/32466665645.20231214075731.jpg?type=w300',
            
          ),
          BookTile(
            title: 'OS? Oh Yes!',
            subtitle: '누워서 보는 운영체제 이야기',
            description: '학부 수준에서 운영 체제를 이해하는데 필요한 내용들을 담고 있는 교재로 구어체로 서술하여 더욱 쉽게 읽을 수 있도록 구성하였다. 저자의 강의록을 바탕으로 하였으며, 운영체제의 기본 내용을 익혀야 하는 사람 누구나 읽을 수 있게 하였다. 참고문헌과 연습문제는 수록하지 않았으며, 필기할 수 있는 공간을 각 장의 끝에 붙여 활용할 수 있게 하였다.',
            image: 'https://shopping-phinf.pstatic.net/main_3249666/32496660939.20230704085307.jpg?type=w300',
          ),
          BookTile(
            title: '컴퓨터구조론',
            subtitle: '컴퓨터구조론 개정5판판',
            description: '현재 컴퓨터는 개인적 용도로 사용되는 모바일용 PC로부터 시작하여 초고속 과학계산을 위한 슈퍼컴퓨터에 이르기까지, 크기와 가격 및 성능에 있어서 매우 다양한 종류의 컴퓨터들이 존재하고 있다. 그런데 흥미로운 점은 그러한 컴퓨터들의 기본 구조와 동작 원리는 거의 동일하다는 것이다. 본 저서에서는 컴퓨터 하드웨어의 기본 원리와 핵심 기술들을 이해하기 쉽도록 간결하게 설명하였으며, 컴퓨터의 성능을 높이기 위하여 최근에 새로이 개발된 멀티-코어 프로세서, GPU, DDR SDRAM 및 SSD를 포함한 각종 보조저장장치를 비롯한 첨단 컴퓨터 기술들에 대하여 전반적으로 소개하고 있다.',
            image: 'https://shopping-phinf.pstatic.net/main_3249131/32491310635.20250114071155.jpg?type=w300',
          )
        ],
      ),
    );
  }
}

class BookTile extends StatelessWidget{
  final String title;
  final String subtitle;
  final String description;
  final String image;
  BookTile({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.image,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Text(title),
      leading: Image.network(image),
      onTap: () {}, //title, subtitle, description, image data를 다음 화면으로 넘기며 이동 
    );
  }
}