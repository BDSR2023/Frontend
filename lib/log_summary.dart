import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class HalfCirclePainter extends CustomPainter {
  final BuildContext context; // BuildContext 추가

  HalfCirclePainter(this.context); // 생성자 수정

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.lightBlueAccent // 반원의 색상 설정
      ..style = PaintingStyle.fill; // 반원을 채울 스타일로 설정

    final center = Offset(size.width / 2, size.height / 2); // 중심점 설정
    final radius = MediaQuery.of(context).size.height / 2; // 반지름 설정
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), 0, -3.14, true, paint); // 반원 그리기

    // 텍스트 그리기
    final textStyle = TextStyle(
      color: Colors.white, // 텍스트 색상 설정
      fontWeight: FontWeight.bold, // 텍스트 굵기 설정
    );

    // 텍스트
    final textSpan = TextSpan(
      children: [
        TextSpan(text: "    DIVE   ",  style: textStyle.copyWith(fontSize: 10)),
        TextSpan(text: "\n"),
        TextSpan(text: "83", style: textStyle.copyWith(fontSize: 40)),
        TextSpan(text: "\n"),
        TextSpan(text: "   TIMES",  style: textStyle.copyWith(fontSize: 10)),
      ],
    );

    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout();

    final textOffset = Offset(
      center.dx - textPainter.width*1.3,
      center.dy - textPainter.height*1.3,
    );

    final scale = 3.0; // 텍스트의 크기를 조절할 비율
    canvas.save();
    canvas.scale(scale);
    textPainter.paint(canvas, textOffset);
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class HalfCircleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double bottomAppBarHeight = kBottomNavigationBarHeight;
    double halfCircleHeight = bottomAppBarHeight / 50;
    double halfCircleWidth = MediaQuery.of(context).size.width / 5;

    return CustomPaint(
      painter: HalfCirclePainter(context), // CustomPainter의 생성자에 BuildContext를 전달
      size: Size(halfCircleWidth, halfCircleHeight),
    );
  }
}

class MyApp extends StatelessWidget {
  // 날짜 로그 목록
  final List<String> log_date = [
    '2020.08.13     제주도문섬',
    '2020.08.15     제주도범섬',
    '2020.09.05     태종대',
    '2021.07.05     태종대',
    '2021.08.13     제주도',
    '2022.08.13     제주도문섬',
    '2022.09.05     제주도범섬',
    '2023.07.05     울릉도',
    '2023.08.15     울릉도',
    '2023.08.15     제주도',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new_sharp, color: Colors.grey)),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: log_date.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 80),
                    child: ListTile(
                      dense: true,
                      title: Text(log_date[index], style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
                      subtitle: Divider(),
                    ),
                  );
                },
              ),
            ),
            // HalfCircleWidget을 Column의 맨 아래에 배치
            Builder(
              builder: (context) => Container(
                height: MediaQuery.of(context).size.height / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    HalfCircleWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
