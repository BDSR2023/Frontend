import 'package:flutter/material.dart';

class logCreation7 extends StatelessWidget {
  logCreation7({Key? key}) : super(key: key);

  var comment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6FA9E5),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: Text('COMMENT',style: TextStyle(color: Colors.black, fontSize: 40),),
            ),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                height: double.infinity,
                child: TextField(
                  decoration: InputDecoration(border: InputBorder.none,),
                  style: TextStyle(fontSize: 25),
                  maxLines: null,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
