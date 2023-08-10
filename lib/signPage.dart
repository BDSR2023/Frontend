import 'package:flutter/material.dart';
import 'package:logbook/myDrawingBoard.dart';


//여기서 앱바설정을 한다음, 바디로 MyDrawingBoard()를 불러옵니다.
//그림판 설정이나, 사진저장법을 수정하고 싶으시면 MyDrawingBoard.dart로 이동해주세요.

class signPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffebf2fb),
        elevation: 0.0, automaticallyImplyLeading: false,
        leading:  IconButton(
            onPressed: () { Navigator.pop(context); },
            color: Color(0xffb2b2b2),
            icon: Icon(Icons.arrow_back_ios_rounded,size: 40,)),
      ),
      body: MyDrawingBoard(),
    );
  }
}
