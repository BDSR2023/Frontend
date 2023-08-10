import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


//여기서는 사진저장이 필요합니다. (api로 넘겨줘야함)

class logCreation9 extends StatelessWidget {
  const logCreation9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,    //필요할 때를 위해 남겨둠.(키보드 쓸때, 화면 안 올라가게 하는것.)
      backgroundColor: Colors.white,
      body: DefaultTextStyle(
        style: TextStyle(
            fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500
        ),
        child: Container(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    child: Container(
                      height: 50, width: 50,
                      child: Icon(Icons.arrow_back_ios_rounded,
                        size: 40, color: Colors.grey,),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
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
      ),
    );
  }
}
