import 'package:flutter/material.dart';
import 'package:logbook/myDrawingBoard.dart';


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
