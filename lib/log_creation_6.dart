import 'package:flutter/material.dart';
import 'log_creation_7.dart';

class log_creation_6 extends StatelessWidget {
  log_creation_6({Key? key}) : super(key: key);

  var entryTimeHour=0; var entryTimeMin=0; var exitTimeHour=0; var exitTimeMin=0;
  var startPressure=0; var endPressure=0;
  var averageDepth=0; var maxDepth=0;
  var safetyStop=0;
  var deepStopDepth1=0; var deepStopMin1=0;
  var deepStopDepth2=0; var deepStopMin2=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF3FD),
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
        child: Column(
          children: [
            Flexible(
              child: Container(

              ),
            ),
            Flexible(
              flex: 2,
              child: Row(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('입수 시간',style: TextStyle(fontFamily: "GmarketSansTTF", color: Colors.black, fontSize: 20),),
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xffDAE8F8),
                                ),
                                height: 30, width: 45,
                                child: TextField(
                                  decoration: InputDecoration(border: InputBorder.none,),
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              SizedBox(
                                child: Text('시',style: TextStyle(color: Colors.black, fontSize: 20),),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xffDAE8F8),
                                ),
                                height: 30, width: 45,
                                child: TextField(
                                  decoration: InputDecoration(border: InputBorder.none,),
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              SizedBox(
                                child: Text('분',style: TextStyle(color: Colors.black, fontSize: 20),),
                              )
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
                        Text('출수 시간',style: TextStyle(color: Colors.black, fontSize: 20),),
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xffDAE8F8),
                                ),
                                height: 30, width: 45,
                                child: TextField(
                                  decoration: InputDecoration(border: InputBorder.none,),
                                  style: TextStyle(fontSize: 25),),
                              ),
                              SizedBox(
                                child: Text('시',style: TextStyle(color: Colors.black, fontSize: 20),),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xffDAE8F8),
                                ),
                                height: 30, width: 45,
                                child: TextField(
                                  decoration: InputDecoration(border: InputBorder.none,),
                                  style: TextStyle(fontSize: 25),),
                              ),
                              SizedBox(
                                child: Text('분',style: TextStyle(color: Colors.black, fontSize: 20),),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Row(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('시작 압력',style: TextStyle(color: Colors.black, fontSize: 20),),
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xffDAE8F8),
                                ),
                                height: 30, width: 90,
                                child: TextField(
                                  decoration: InputDecoration(border: InputBorder.none,),
                                  style: TextStyle(fontSize: 25),),
                              ),
                              SizedBox(
                                child: Text('bar',style: TextStyle(color: Colors.black, fontSize: 20),),
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
                        Text('종료 압력',style: TextStyle(color: Colors.black, fontSize: 20),),
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xffDAE8F8),
                                ),
                                height: 30, width: 90,
                                child: TextField(
                                  decoration: InputDecoration(border: InputBorder.none,),
                                  style: TextStyle(fontSize: 25),),
                              ),
                              SizedBox(
                                child: Text('bar',style: TextStyle(color: Colors.black, fontSize: 20),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Row(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('평균 수심',style: TextStyle(color: Colors.black, fontSize: 20),),
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xffDAE8F8),
                                ),
                                height: 30, width: 90,
                                child: TextField(
                                  decoration: InputDecoration(border: InputBorder.none,),
                                  style: TextStyle(fontSize: 25),),
                              ),
                              SizedBox(
                                child: Text('m',style: TextStyle(color: Colors.black, fontSize: 20),),
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
                        Text('최대 수심',style: TextStyle(color: Colors.black, fontSize: 20),),
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xffDAE8F8),
                                ),
                                height: 30, width: 90,
                                child: TextField(
                                  decoration: InputDecoration(border: InputBorder.none,),
                                  style: TextStyle(fontSize: 25),),
                              ),
                              SizedBox(
                                child: Text('m',style: TextStyle(color: Colors.black, fontSize: 20),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 180,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('안전 정지',style: TextStyle(color: Colors.black, fontSize: 20),),
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 0, 5),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Color(0xffDAE8F8),
                              ),
                              height: 30, width: 60,
                              child: TextField(
                                decoration: InputDecoration(border: InputBorder.none,),
                                style: TextStyle(fontSize: 25),),
                            ),
                            SizedBox(
                              child: Text('mim(분)',style: TextStyle(color: Colors.black, fontSize: 20),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('감압정지',style: TextStyle(color: Colors.black, fontSize: 20),),
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 0, 5),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Color(0xffDAE8F8),
                              ),
                              height: 30, width: 60,
                              child: TextField(
                                decoration: InputDecoration(border: InputBorder.none,),
                                style: TextStyle(fontSize: 25),),
                            ),
                            SizedBox(
                              child: Text('m',style: TextStyle(color: Colors.black, fontSize: 20),),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Color(0xffDAE8F8),
                              ),
                              height: 30, width: 60,
                              child: TextField(
                                decoration: InputDecoration(border: InputBorder.none,),
                                style: TextStyle(fontSize: 25),),
                            ),
                            SizedBox(
                              child: Text('min(분)',style: TextStyle(color: Colors.black, fontSize: 20),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 5, 0, 5),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Color(0xffDAE8F8),
                          ),
                          height: 30, width: 60,
                          child: TextField(
                            decoration: InputDecoration(border: InputBorder.none,),
                            style: TextStyle(fontSize: 25),),
                        ),
                        SizedBox(
                          child: Text('m',style: TextStyle(color: Colors.black, fontSize: 20),),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Color(0xffDAE8F8),
                          ),
                          height: 30, width: 60,
                          child: TextField(
                            decoration: InputDecoration(border: InputBorder.none,),
                            style: TextStyle(fontSize: 25),),
                        ),
                        SizedBox(
                          child: Text('min(분)',style: TextStyle(color: Colors.black, fontSize: 20),),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
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
                          MaterialPageRoute(builder: (context) => log_creation_7()),
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
