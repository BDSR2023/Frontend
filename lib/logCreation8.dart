import 'package:flutter/material.dart';
import 'logCreation9.dart';

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
    setState(() {
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
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
        child: Column(
          children: [
            Container(
              height: 50,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('다이빙 센터',style: TextStyle(color: Colors.black, fontSize: 20),),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                    child: Row(
                      children: [
                        Flexible(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Color(0xffEBF2FB),
                            ),
                            height: 35,
                            child: TextField(style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                hintText: '입력 해주세요',border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('버디',style: TextStyle(color: Colors.black, fontSize: 20),),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                    child: Row(
                      children: [
                        Flexible(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Color(0xffEBF2FB),
                            ),
                            height: 35,
                            child: TextField(style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                hintText: '입력 해주세요',border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('가이드',style: TextStyle(color: Colors.black, fontSize: 20),),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xffEBF2FB),
                                ),
                                height: 30,
                                child: TextField(
                                  decoration: InputDecoration(border: InputBorder.none,),
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                              height: 30, width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Color(0xffd9e7fa),
                              ),
                              child: ElevatedButton(
                                child: Text('강사', style: TextStyle(fontSize: 20, color: Color(instructorTextColor)),
                                  textAlign: TextAlign.center,
                                ),
                                onPressed: () {
                                  toInstructor();
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
                                height: 30,
                                child: TextField(
                                  decoration: InputDecoration(border: InputBorder.none,),
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                              height: 30, width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Color(0xffd9e7fa),
                              ),
                              child: ElevatedButton(
                                child: Text('마스터', style: TextStyle(fontSize: 20, color: Color(masterTextColor)),
                                  textAlign: TextAlign.center,
                                ),
                                onPressed: () {
                                  toMaster();
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
                  ),
                ],
              ),
            ),
            Container(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('서명',style: TextStyle(color: Colors.black, fontSize: 20),),
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
                        MaterialPageRoute(builder: (context) => logCreation9()),
                      );
                    },
                  ),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('스탬프 이미지 첨부',style: TextStyle(color: Colors.black, fontSize: 20),),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xff6FA9E5),
                          ),
                          height: 110, width: 210,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff6FA9E5)
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 55, width: 180,
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0), margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Color(0xffeaf2fc),
                                  ),
                                  child: Text('CLICK!', style: TextStyle(fontSize: 24, color: Colors.black,),textAlign: TextAlign.center,),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('*최근에 찍은 스탬프 사진을', style: TextStyle(fontSize: 13, color: Colors.white,)),
                                    Text('업로드 할 수 있어요.', style: TextStyle(fontSize: 13, color: Colors.white,)),
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
                    Expanded(
                      child: SizedBox(),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('다이빙 사진 추가',style: TextStyle(color: Colors.black, fontSize: 20),),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xff6FA9E5),
                          ),
                          height: 110, width: 210,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff6FA9E5)
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 55, width: 55,
                                      margin: EdgeInsets.fromLTRB(0, 10, 5, 0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: Color(0xffeaf2fc),
                                      ),
                                    ),
                                    Container(
                                      height: 55, width: 55,
                                      margin: EdgeInsets.fromLTRB(0, 10, 5, 0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: Color(0xffeaf2fc),
                                      ),
                                    ),
                                    Container(
                                      height: 55, width: 55,
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
    );
  }
}
