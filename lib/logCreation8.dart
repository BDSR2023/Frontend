import 'package:flutter/material.dart';
import 'package:logbook/myDrawingBoard.dart';
import 'signPage.dart';
import 'logCreation9.dart';
import 'package:provider/provider.dart';
import 'logCreationManager.dart';

class logCreation8 extends StatefulWidget {
  const logCreation8({Key? key}) : super(key: key);

  @override
  State<logCreation8> createState() => _logCreation8State();
}

class _logCreation8State extends State<logCreation8> {

  var instructorColor = 0xffd9e7fa;
  var masterColor = 0xffd9e7fa;
  var instructorTextColor = 0xff000000;
  var masterTextColor = 0xff000000;

  var selectedGuide = 'none';

  void toInstructor() {
    setState(() {
      instructorColor = 0xff6ba4e9;
      masterColor = 0xffd9e7fa;
      instructorTextColor = 0xffffffff;
      masterTextColor = 0xff000000;
    });
    selectedGuide = '강사';
  }
  void toMaster() {
    setState(() {
      instructorColor = 0xffd9e7fa;
      masterColor = 0xff6ba4e9;
      instructorTextColor = 0xff000000;
      masterTextColor = 0xffffffff;
    });
    selectedGuide = '마스터';
  }

  @override
  void initState() {
    super.initState();
    final logCreationManager = Provider.of<LogCreationManager>(context, listen: false);

    selectedGuide = logCreationManager.selectedGuide;

    if(selectedGuide == 'none') {
      instructorColor = 0xffd9e7fa;
      masterColor = 0xffd9e7fa;
      instructorTextColor = 0xff000000;
      masterTextColor = 0xff000000;
    } else if (selectedGuide == '강사') {
      instructorColor = 0xff6ba4e9;
      masterColor = 0xffd9e7fa;
      instructorTextColor = 0xffffffff;
      masterTextColor = 0xff000000;
    } else {
      instructorColor = 0xffd9e7fa;
      masterColor = 0xff6ba4e9;
      instructorTextColor = 0xff000000;
      masterTextColor = 0xffffffff;
    }
  }

  @override
  Widget build(BuildContext context) {
    final logCreationManager = Provider.of<LogCreationManager>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: DefaultTextStyle(
        style: TextStyle(
            fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, color: Colors.black
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(25, 0, 25, 10),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('다이빙 센터', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffEBF2FB),
                          ),
                          height: 40,
                          child: TextField(style: TextStyle(
                            fontSize: 24, fontFamily: 'GmarketSansTTF',),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: '입력 해주세요',
                              hintStyle: TextStyle(
                                fontSize: 24, fontFamily: 'GmarketSansTTF',
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 25,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('버디', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  Text(''),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Color(0xffEBF2FB),
                          ),
                          height: 40,
                          child: TextField(style: TextStyle(
                              fontSize: 24, fontFamily: 'GmarketSansTTF',),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: '입력 해주세요',
                              hintStyle: TextStyle(
                                fontSize: 24, fontFamily: 'GmarketSansTTF',
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 25,),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('가이드', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                    SizedBox(height: 10,),
                    Column(
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xffEBF2FB),
                                ),
                                height: 40,
                                child: TextField(
                                  decoration: InputDecoration(border: InputBorder.none,),
                                  style: TextStyle(fontSize: 24, fontFamily: 'GmarketSansTTF',),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                              height: 40, width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Color(0xffd9e7fa),
                              ),
                              child: ElevatedButton(
                                child: Text('강사', style: TextStyle(fontSize: 21, fontFamily: 'GmarketSansTTF',
                                    color: Color(instructorTextColor)),
                                  textAlign: TextAlign.center,
                                ),
                                onPressed: () {
                                  toInstructor();
                                  logCreationManager.updateSelectedGuide('강사');
                                },
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Color(instructorColor)),
                                  elevation: MaterialStateProperty.all(0),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xffEBF2FB),
                                ),
                                height: 40,
                                child: TextField(
                                  decoration: InputDecoration(border: InputBorder.none,),
                                  style: TextStyle(fontSize: 24, fontFamily: 'GmarketSansTTF',),
                                ),
                              ),
                            ),
                            Container(
                              height: 40, width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xffd9e7fa),
                              ),
                              child: ElevatedButton(
                                child: Text('마스터', style: TextStyle(fontSize: 21, fontFamily: 'GmarketSansTTF',
                                    color: Color(masterTextColor)),
                                  textAlign: TextAlign.center,
                                ),
                                onPressed: () {
                                  toMaster();
                                  logCreationManager.updateSelectedGuide('마스터');
                                },
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Color(masterColor)),
                                  elevation: MaterialStateProperty.all(0),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('서명', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  SizedBox(height: 10,),
                  Container(
                    height: 130, width: double.infinity,
                    padding: EdgeInsets.fromLTRB(0, 45, 0, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff6FA9E5),
                    ),
                    child: GestureDetector(
                        child: Text('자유롭게 서명을 해주세요',style: TextStyle(
                          color: Colors.white, fontSize: 20,
                        ),textAlign: TextAlign.center,),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => signPage()),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('스탬프 이미지 첨부', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                          SizedBox(height: 10,),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff6FA9E5),
                            ),
                            height: 110, width: MediaQuery.of(context).size.width/2.4,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff6FA9E5),
                                padding: EdgeInsets.fromLTRB(5, 0, 3, 0)
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 55, width: MediaQuery.of(context).size.width/2.8,
                                    padding: EdgeInsets.fromLTRB(0, 12, 0, 0), margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: Color(0xffeaf2fc),
                                    ),
                                    child: Text('CLICK!', style: TextStyle(fontSize: 24, color: Colors.black,),textAlign: TextAlign.center,),
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('*최근에 찍은 스탬프 사진을\n업로드 할 수 있어요.',
                                          style: TextStyle(fontSize: MediaQuery.of(context).size.width/32, color: Colors.white,fontFamily: 'GmarketSansTTF',)),
                                    ],
                                  ),
                                ],
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => logCreation9()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width/100,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('다이빙 사진 추가', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                          SizedBox(height: 10,),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff6FA9E5),
                            ),
                            height: 110, width: MediaQuery.of(context).size.width/2.4,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff6FA9E5),
                                padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/100, 0, MediaQuery.of(context).size.width/100, 0)
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: MediaQuery.of(context).size.width/8.2, width: MediaQuery.of(context).size.width/8.2,
                                        margin: EdgeInsets.fromLTRB(0, 10, 5, 0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(3),
                                          color: Color(0xffeaf2fc),
                                        ),
                                      ),
                                      Container(
                                        height: MediaQuery.of(context).size.width/8.2, width: MediaQuery.of(context).size.width/8.2,
                                        margin: EdgeInsets.fromLTRB(0, 10, 5, 0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(3),
                                          color: Color(0xffeaf2fc),
                                        ),
                                      ),
                                      Container(
                                        height: MediaQuery.of(context).size.width/8.2, width: MediaQuery.of(context).size.width/8.2,
                                        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(3),
                                          color: Color(0xffeaf2fc),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(Icons.photo_camera_rounded, size: 45,)
                                    ],
                                  ),
                                ],
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => logCreation9()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
