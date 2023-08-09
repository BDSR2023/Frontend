import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: result2(),
    );
  }
}

class result2 extends StatefulWidget {
  @override
  _result2State createState() => _result2State();
}

class _result2State extends State<result2> {
  // 이미지 파일 이름 리스트
  final List<String> photos = [
    "윤재형.jpg",
    "광민이형.jpg",
    "용우형.jpg",
    // 다른 이미지 파일 이름을 여기에 추가
  ];

  // 댓글 및 사용자 정보 리스트
  List<String> comments = [
    "와 재밌겠다",
    "광민아 사랑해",
    "서현아 나도",
    "해해",
    "충성"
  ];
  List<String> name = [
    "김윤재",
    "정서현",
    "정광민",
    "김용우",
    "심승우"
  ];
  List<String> profile_image = [
    "윤재쨩.jpg",
    "광민,서현.jpg",
    "광민,서현.jpg",
    "용우쨩.jpg",
    "승우쨩.jpg"
  ];

  int _currentIndex = 0; //CarouselSlider에서 보여지고 있는 이미지의 인덱스를 나타내는 변수

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // 상단 로그북 정보와 이미지 스탬프
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(40, 0, 0, 50),
                  child: Text(
                    '77번째 로그북',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 50, 40, 0),
                  child: Image.asset(
                    "assets/stamp.jpg",
                    height: 100,
                    width: 100,
                  ),
                ),
              ],
            ),
            // 이미지 보기(사진) 텍스트와 아이콘
            Container(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: Icon(Icons.square, color: Colors.black),
                  ),
                  Text(
                    '이미지 보기(사진)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            // 위치보기 아이콘과 텍스트
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.search),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 40, 10),
                  child: Text(
                    '위치보기',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            // 이미지 카로셀 슬라이더
            Container(
              child: CarouselSlider.builder(
                itemCount: photos.length,
                itemBuilder: (context, index, _) {
                  return _buildPhotoPage(photos[index]);
                },
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
              ),
            ),
            // 이미지 카로셀의 도트 인디케이터
            DotsIndicator(
              dotsCount: photos.length,
              position: _currentIndex.toDouble(),
              decorator: DotsDecorator(
                activeColor: Colors.blue,
                size: const Size.square(8.0),
                activeSize: const Size(20.0, 8.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
            // 좋아요 수와 댓글 수, 공유 버튼
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        child: Text(
                          '10',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      ),
                      Icon(Icons.favorite, size: 15),
                      Text(
                        '  댓글(2)',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.share, size: 15),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
                        child: Text(
                          '피드에 공유',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            // 댓글 리스트
            ListView.builder(
              physics: NeverScrollableScrollPhysics(), // ListView 스크롤 비활성화
              shrinkWrap: true, // ListView 크기를 내용물에 맞게 조정
              itemCount: comments.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: buildCircleAvatar(profile_image[index]),
                  title: Text(name[index]),
                  subtitle: Text(comments[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // 이미지 페이지 위젯 생성
  Widget _buildPhotoPage(String photoName) {
    return Center(
      child: Image.asset(
        "assets/$photoName",
        fit: BoxFit.contain,
      ),
    );
  }
}

// 원형 아바타 위젯 생성
Widget buildCircleAvatar(String imageName) {
  return CircleAvatar(
    backgroundColor: Colors.grey,
    backgroundImage: AssetImage("assets/$imageName"),
    radius: 25,
  );
}
