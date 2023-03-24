import 'package:flutter/material.dart';


class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCCDEF4),
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 55, height: 55,
                    child: Icon(Icons.account_circle_sharp, size: 50,),
                  ),
                  Flexible(
                    child: Container(
                      height: 55,
                    ),
                  ),
                  SizedBox(
                    width: 55, height: 55,
                    child: Icon(Icons.search, size: 50,),
                  ),
                  SizedBox(
                    width: 55, height: 55,
                    child: Icon(Icons.notifications_none_rounded, size: 50,),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Container(
                color: Colors.orange,
              ),
            ),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('안녕하세요\n\'바다람사\'님!', style: TextStyle(
                    color: Colors.black, height: 1.15,
                    ), textAlign: TextAlign.start,),
                  Row(
                    children: [
                      Text('오늘은 어쩐 다이빙 기록이 있을까요?', style: TextStyle(
                        color: Colors.black, fontSize: 18
                        ), ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                        child: Icon(Icons.chevron_right_rounded),
                      )
                    ],
                  )
                ],
              ),
            ),
            Flexible(
              child: Container(
                color: Colors.orange,
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('바다람사\'S LOG', style: TextStyle(
                              color: Colors.black, fontSize: 40
                            )
                            ,),
                          Text('나의 지난 다이빙 기록들을 살펴보아요', style: TextStyle(
                            color:  Colors.black, fontSize: 17,
                          ),),
                        ],
                      ),
                      Flexible(
                        child: Container(),
                      ),
                      SizedBox(
                        child: Icon(Icons.add_box_rounded, size: 50,),
                      ),
                    ],
                  ),
                  Container(
                    height: 210, margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Flexible( fit: FlexFit.tight,
                              child: Container(
                                height: 170,
                                margin: EdgeInsets.fromLTRB(5, 5, 5, 3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey,
                                ),
                                child: Text('로그북'),
                              ),
                            ),
                            Flexible( fit: FlexFit.tight,
                              child: Container(
                                height: 170,
                                margin: EdgeInsets.fromLTRB(5, 5, 5, 3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey,
                                ),
                                child: Text('로그북'),
                              ),
                            ),
                            Flexible( fit: FlexFit.tight,
                              child: Container(
                                height: 170,
                                margin: EdgeInsets.fromLTRB(5, 5, 5, 3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey,
                                ),
                                child: Text('로그북'),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('지난 로그 보기',
                                style: TextStyle(
                                  fontSize: 15, color: Colors.black
                                ),
                              ),
                              Icon(Icons.expand_more_rounded, size: 30,),
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                ],
              ),
            ),
            Flexible(
              child: Container(
                color: Colors.orange,
              ),
            ),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('DIVE LEVEL', style: TextStyle(
                    fontSize: 40, color: Colors.black
                  ),),
                  Text('나의 다양한 정보들을 한번에!', style: TextStyle(
                    fontSize: 17, color: Colors.black
                  ),),
                  Container(
                    height: 180, margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          child: Column(
                            children: [
                              Icon(Icons.leaderboard_sharp, size: 100,),
                              Text('LEVEL', style: TextStyle(
                                fontSize: 20, color: Colors.black
                              ),)
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Column(
                            children: [
                              Text('DIVE', style: TextStyle(
                                  fontSize: 25, color: Colors.black
                              ),),
                              Text('83', style: TextStyle(
                                fontSize: 70, color: Colors.black
                              ),),
                              Text('LEVEL', style: TextStyle(
                                  fontSize: 20, color: Colors.black
                              ),)
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Column(
                            children: [
                              Icon(Icons.chrome_reader_mode_rounded, size: 100,),
                              Text('MY\nLICENSE', style: TextStyle(
                                  fontSize: 20, color: Colors.black,
                              ),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

