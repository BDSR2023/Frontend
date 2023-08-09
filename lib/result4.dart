import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: result4(),
    );
  }
}

class result4 extends StatefulWidget {
  const result4({Key? key}) : super(key: key);

  @override
  State<result4> createState() => _result4State();
}

class _result4State extends State<result4> {
  final List<String> photos = [
    "윤재형.jpg",
    "광민이형.jpg",
    "용우형.jpg",
    // 더 많은 사진 이름을 여기에 추가 (assets 폴더에 있는 것으로 가정)
  ];
  List<String> comments = [
    "ㅎㅎ",
    "광민아 같이가자",
    "그래",
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

  int _currentIndex = 0;

  Widget buildCircleAvatar(String imageName) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      backgroundImage: AssetImage("assets/$imageName"), // 프로필 이미지 가져오기
      radius: 25,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
            child: Text('77번째 로그북', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
            child: Row(
              children: [
                Icon(Icons.square),
                Text('  방명록',style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      child: Text('10', style: TextStyle(fontWeight: FontWeight.bold,),),
                      padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                    ),
                    Icon(Icons.favorite, size: 15,),
                    Text('  댓글(2)', style: TextStyle(fontWeight: FontWeight.bold,),)
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.share, size: 15,),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
                      child: Text('피드에 공유', style: TextStyle(fontWeight: FontWeight.bold,),),
                    )
                  ],
                )
              ],
            ),
          ),
          Divider(),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(), // ListView 자체에서 스크롤을 비활성화
            shrinkWrap: true, // ListView가 내용물에 맞게 크기를 조정
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
    );
  }
}
