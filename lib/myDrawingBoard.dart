import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class MyCustomPainter extends CustomPainter {
  List<Offset> points = [];

  MyCustomPainter({required this.points});

  @override
  void paint(Canvas canvas, Size size) {
    if (points.isEmpty) return; //잘 모르겠음.

    Paint paint = Paint()
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;

    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i], points[i + 1], paint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}


//위의 MyCustomPainter를 가져옵니다.
class MyDrawingBoard extends StatefulWidget {
  @override
  _MyDrawingBoardState createState() => _MyDrawingBoardState();
}

class _MyDrawingBoardState extends State<MyDrawingBoard> {
  List<Offset> points = [];

  GlobalKey _canvasKey = GlobalKey();

  void saveImage() async {
    final recorder = ui.PictureRecorder();
    final canvas = Canvas(recorder);
    MyCustomPainter(points: points).paint(canvas, Size.infinite);
    final picture = recorder.endRecording();
    final image = await picture.toImage(800, 600); // 원하는 이미지 크기를 설정합니다.

    final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    if (byteData != null) {
      final buffer = byteData.buffer.asUint8List();
      // path_provider 패키지를 사용하여 저장 경로를 얻습니다.
      final directory = await getApplicationDocumentsDirectory();
      // 파일명을 지정합니다. 현재 시간을 이용하여 고유한 파일명을 생성하는 것이 좋습니다.
      final fileName = '${DateTime.now().millisecondsSinceEpoch}.png';
      // 파일 경로를 만듭니다.
      final filePath = '${directory.path}/$fileName';
      // 파일로 저장합니다.
      await File(filePath).writeAsBytes(buffer);
      print('\n저장 완료\n');
      // 파일 저장 경로입니다.
      print('\n${directory.path}\n');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (DragUpdateDetails details) {
          setState(() {
            RenderBox renderBox = context.findRenderObject() as RenderBox;
            points.add(renderBox.globalToLocal(details.globalPosition));
          });
        },
        onPanEnd: (DragEndDetails details) {
          setState(() {
            points.add(Offset.infinite);
          });
        },
        child: Container(
          color: Color(0xffebf2fb),
          child: CustomPaint(
            key: _canvasKey,
            painter: MyCustomPainter(points: points),
            size: Size.infinite,
          ),
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment(0.0, 0.9),
        child: FloatingActionButton(
          onPressed: () {
            saveImage();
            Navigator.pop(context);
          },
          child: Icon(Icons.check_rounded),
          backgroundColor: Color(0xff96bae9),
          elevation: 0.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}