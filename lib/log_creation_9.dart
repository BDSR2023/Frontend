import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:logbook/Upload.dart';

class log_creation_9 extends StatelessWidget {
  const log_creation_9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,    //필요할 때를 위해 남겨둠.(키보드 쓸때, 화면 안 올라가게 하는것.)
      backgroundColor: Color(0xffECF3FD),
      body: Container(
        child: Column(
          children: [
            Flexible(
              child: Container(),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: Color(0xff6FA9E5),
              ),
              margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
              width: 200, height: 70,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff6FA9E5)
                ),
                child: Text('사진 보관',textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25),
                ),
                onPressed: () async {
                  var picker = ImagePicker();
                  var image = await picker.pickImage(source: ImageSource.gallery);
                }
              )
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: Color(0xff6FA9E5),
              ),
              margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
              width: 200, height: 70,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff6FA9E5)
                ),
                child: Text('사진 찍기',textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,),
                ),
                onPressed: () async {
                  var picker = ImagePicker();
                  var image = await picker.pickImage(source: ImageSource.camera);
                }
              )
            ),
            Flexible(
              child: Container(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Color(0xffECF3FD), elevation: 0.0,
          child: Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 0, 20),
                      child: IconButton(
                        icon: Icon(Icons.chevron_left_rounded,size: 50,),
                        onPressed: (){Navigator.pop(context); },
                      )
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 40, 20),
                    child: IconButton(
                      icon: Icon(Icons.navigate_next_rounded, size: 50),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => log_creation_9()),
                        );
                      },
                    ),
                  ),
                ],
              )
          )
      ),
    );
  }
}
