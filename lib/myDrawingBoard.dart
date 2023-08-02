import 'package:flutter/material.dart';
import 'myCostomPainter.dart';
import 'dart:typed_data';
import 'dart:ui' as ui;


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
      // 파일로 저장하거나, 클립보드에 복사하는 등의 작업을 할 수 있습니다.
      // 여기서는 파일로 저장하는 예제를 보여드리겠습니다.
      // 파일로 저장하는 로직은 path_provider 패키지를 사용하여 앱 디렉토리에 파일을 저장하는 방식을 사용합니다.
      // 필요한 경우 path_provider 패키지를 추가하여 아래의 파일 저장 로직을 구현해야 합니다.
      // final buffer = byteData.buffer.asUint8List();
      // final directory = await getApplicationDocumentsDirectory();
      // final file = File('${directory.path}/my_image.png');
      // await file.writeAsBytes(buffer);
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