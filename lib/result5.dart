import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: result5(),
    );
  }
}

class result5 extends StatelessWidget {
  const result5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // 배경색을 흰색으로 설정
      body: Image.asset('assets/문어.png'), // assets 폴더에 있는 이미지를 보여줌
    );
  }
}
