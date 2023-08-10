import 'package:flutter/material.dart';
import 'package:logbook/logCreation6.dart';
import 'package:logbook/logCreationBase.dart';
import 'package:logbook/optionPage.dart';
import 'profile.dart';


//홈페이지 입니다.
//스크롤 기능, 설정버튼 추가 필요 (지금은 임시로 알림버튼에 설정페이지를 연결해 뒀습니다.)
//로그북 보여주는 기능 필요

//log작성 페이지는 logCreationBase.dart로 이동해주세요.

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _HomePageState();
}

class _HomePageState extends State<homePage> {

  var diveLevel = 'advanced';
  var diveTimes = 13;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
          fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500,
        fontSize: 30,
        color: Colors.white,
      ),
      child: Scaffold(
        backgroundColor: Color(0xffECF3FD),
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
                      child: IconButton(
                        icon: Icon(Icons.account_circle_sharp, size: 50,),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Profile()),
                          );
                        },
                      )
                    ),
                    Flexible(
                      child: Container(
                        height: 55,
                      ),
                    ),
                    IconButton(onPressed: () {

                    }, icon: Icon(Icons.search, size: 50,),
                      padding: EdgeInsets.fromLTRB(0, 0, 30, 30),),
                    SizedBox(width: 10,),
                    IconButton(onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => optionPage()),
                      );
                    }, icon: Icon(Icons.notifications_none_rounded, size: 50,),
                    padding: EdgeInsets.fromLTRB(0, 0, 25, 35),),
                  ],
                ),
              ),
              Flexible(
                child: Container(
                ),
              ),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('안녕하세요\n\'바다람사\'님!', style: TextStyle(
                      color: Colors.black, height: 1.15,
                      fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.bold,
                      fontSize: 30,
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
                                color: Colors.black, fontSize: 33,
                              )
                              ,),
                            Text('나의 지난 다이빙 기록들을 살펴보아요', style: TextStyle(
                              color:  Colors.black, fontSize: 15,
                            ),),
                          ],
                        ),
                        Flexible(
                          child: Container(),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 20, 15),
                          child: IconButton(
                            icon: Icon(Icons.add_box_rounded, size: 50,),
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => logCreationsBase()),
                              );
                            },
                          )
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
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 100, width: 100,
                                  child: Image.asset(
                                    'assets/${diveLevel}.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Text('LEVEL', style: TextStyle(
                                  fontSize: 20, color: Colors.black
                                ),)
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Column(
                              children: [
                                Text('DIVE', style: TextStyle(
                                    fontSize: 25, color: Colors.black
                                ),),
                                Text('$diveTimes', style: TextStyle(
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
      ),
    );
  }
}

