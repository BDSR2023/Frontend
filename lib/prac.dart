import 'package:flutter/material.dart';

class prac extends StatelessWidget {
  const prac({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text('솔직히 이폰트 진짜 괜찮은듯',style: TextStyle(fontFamily: "GmarketSansTTF", color: Colors.black, fontSize: 20),),
            Text('솔직히 이폰트 진짜 괜찮은듯',style: TextStyle(color: Colors.black, fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
