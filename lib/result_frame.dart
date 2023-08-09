import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'result2.dart'; // 이 코드에서 필요한 result2.dart 등의 파일을 import
import 'result3.dart';
import 'result4.dart';
import 'result5.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page Flip Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: result_frame(),
    );
  }
}

class result_frame extends StatefulWidget {
  @override
  _result_frameState createState() => _result_frameState();
}

class _result_frameState extends State<result_frame> {
  late PageController _pageController;
  int _currentPage = 0;
  List<Widget> _contentList = [
    result2(),
    result3(),
    result4(),
    result5()
  ]; // 여러 result 페이지들을 리스트로 저장

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToPage(int page) {
    // _pageController를 이용하여 페이지 전환
    _pageController.animateToPage(
      page,
      duration: Duration(milliseconds: 500), // 전환 애니메이션 시간 설정
      curve: Curves.ease, // 전환 애니메이션 커브 설정
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0.0,
        title: Text('날짜'),
      ),
      body: Container(
        color: Colors.lightBlueAccent,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: _contentList,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (_currentPage > 0) {
                          _goToPage(_currentPage - 1); // 이전 페이지로 이동
                        }
                      },
                      child: Text('이전 페이지'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_currentPage < _contentList.length - 1) {
                          _goToPage(_currentPage + 1); // 다음 페이지로 이동
                        }
                      },
                      child: Text('다음 페이지'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
