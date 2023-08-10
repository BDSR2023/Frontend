import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'logCreationManager.dart';


//TextField에 컨트롤러를 붙여서 onChanged() 마다 변수를 새로고침해서 할당 해주셔야 할 것 같습니다.

class logCreation1 extends StatefulWidget {
  const logCreation1({Key? key}) : super(key: key);

  @override
  State<logCreation1> createState() => _logCreation1State();
}

class _logCreation1State extends State<logCreation1> {

  final _year = ['2030', '2029', '2028', '2027', '2026', '2025', '2024', '2023', '2022', '2021', '2020'];
  final _month= ['1','2','3','4','5','6','7','8','9','10','11','12'];
  final _day= ['1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17'
  ,'18','19','20','21','22','23','24','25','26','27','28','29','30','31'];
  var weathers = ['sunny', 'cloudy', 'cloudy2', 'rainy', 'snow', 'lightning', 'windy', 'night'];

  String? selectedYear; //선택된 년도
  String? selectedMonth; //선택된 달
  String? selectedDay; //선택된 일
  String? selectedRegion; //선택된 지역
  String? selectedWeather; //선택된 날씨

  var buttonColor = [Colors.white,Colors.white,Colors.white,Colors.white,
    Colors.white,Colors.white,Colors.white,Colors.white];


  void changeWeather(logCreationManager, k) {
    if (selectedWeather == weathers[k]) {
      setState(() {
        logCreationManager.updateSelectedWeather('none');
        selectedWeather = 'none';
        buttonColor[k] = Colors.white;
      });
    } else {
      setState(() {
        logCreationManager.updateSelectedWeather(weathers[k]);
        selectedWeather = weathers[k];
        for (int i = 0; i < 8; i++) {
          buttonColor[i] = Colors.white;
        }
        buttonColor[k] = Color(0xffEBF2FB);
      });
    }
  }


  @override
  void initState() {
    super.initState();
    // 상위 위젯에서 Provider를 설정합니다.
    final logCreationManager = Provider.of<LogCreationManager>(context, listen: false);
    //listen: false를 설정해놓지 않을시, 오류발생.

    selectedYear = logCreationManager.selectedYear;
    selectedMonth = logCreationManager.selectedMonth;
    selectedDay = logCreationManager.selectedDay;
    selectedRegion = logCreationManager.selectedRegion;
    selectedWeather = logCreationManager.selectedWeather;

    for (int i=0; i<8; i++) {
      if (selectedWeather == weathers[i]) {
        buttonColor[i] = Color(0xffEBF2FB);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final logCreationManager = Provider.of<LogCreationManager>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTextStyle(
        style: TextStyle(
            fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, color: Colors.black
        ),
        child: Column(
          children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 0, 5, 10),
                      child: Text('날짜', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 0, 25, 0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Color(0xffEBF2FB),
                            ),
                            height: 40, width: 80,
                            margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                            child: DropdownButton(
                              value: selectedYear,
                              items: _year
                                  .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(e),
                              ))
                                  .toList(),
                              onChanged: (value) {
                                setState(() {
                                  logCreationManager.updateSelectedYear(value!);
                                  selectedYear = value;
                                });
                                },
                              style: TextStyle(
                                  fontSize: 19, color: Colors.black
                              ),
                              underline: SizedBox.shrink(),
                            ),
                          ),
                          Text('년',style: TextStyle(fontSize: 15),)
                        ],
                      ),
                    ),
                    SizedBox(width: 8,),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Color(0xffEBF2FB),
                          ),
                          height: 40, width: 50,
                          margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                          child: DropdownButton(
                            value:  selectedMonth,
                            items: _month
                                .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text(e),
                            ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                logCreationManager.updateSelectedMonth(value!);
                                selectedMonth = value;
                              });
                            },
                            style: TextStyle(
                                fontSize: 19, color: Colors.black
                            ),
                            underline: SizedBox.shrink(),
                          ),
                        ),
                        Text('월',style: TextStyle(fontSize: 15),)
                      ],
                    ),
                    SizedBox(width: 8,),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Color(0xffEBF2FB),
                          ),
                          height: 40, width: 50,
                          margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                          child: DropdownButton(
                            value:  selectedDay ,
                            items: _day
                                .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text(e),
                            )).toList(),
                            onChanged: (value) {
                              setState(() {
                                logCreationManager.updateSelectedDay(value!);
                                selectedDay = value;
                              });
                            },
                            style: TextStyle(
                              fontSize: 19, color: Colors.black
                            ),
                            underline: SizedBox.shrink(),
                          ),
                        ),
                        Text('일',style: TextStyle(fontSize: 15),)
                      ],
                    ),
                  ],
                ),
            Flexible(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(30, 30, 0, 10),
                  child: Text('지역', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 20, 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Color(0xfff5f5f5),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 30, 10),
                  height: 49, width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {

                      });
                    },
                    child: Text('확인',style: TextStyle(color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xfff5f5f5),
                      shadowColor: Colors.transparent,
                    ),
                  ),
                )
              ],
            ),
            Flexible(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(30, 30, 0, 0),
                  child: Text('다이빙 사이트(POINT)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: Color(0xfff5f5f5),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '포인트를 입력해 주세요'
                ),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Flexible(child: Container()),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(30, 50, 0, 0),
                  child: Text('날씨', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                ),
              ],
            ),
           Text(" "),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               ElevatedButton(
                   onPressed: (){
                     changeWeather(logCreationManager, 0);
                     },
                   style: ElevatedButton.styleFrom(
                     backgroundColor: buttonColor[0], elevation: 0.0,
                       fixedSize: Size(MediaQuery.of(context).size.width/4, 70)
                   ),
                   child: Image.asset('assets/sunny.png',width: MediaQuery.of(context).size.width/6, height: 70,)
               ),
               ElevatedButton(
                   onPressed: (){
                 changeWeather(logCreationManager, 1);
               },
                   style: ElevatedButton.styleFrom(
                     backgroundColor: buttonColor[1], elevation: 0.0,
                       fixedSize: Size(MediaQuery.of(context).size.width/4, 70)
                   ),
                   child:  Image.asset('assets/cloudy.png',width: MediaQuery.of(context).size.width/6, height: 70,)
               ),
               ElevatedButton(
                   onPressed: (){
                 changeWeather(logCreationManager, 2);
               },
                   style: ElevatedButton.styleFrom(
                     backgroundColor: buttonColor[2], elevation: 0.0,
                       fixedSize: Size(MediaQuery.of(context).size.width/4, 70)
                   ),
                   child:  Image.asset('assets/cloudy2.png',width: MediaQuery.of(context).size.width/6,height: 70,)
               ),
               ElevatedButton(
                   onPressed: (){
                 changeWeather(logCreationManager, 3);
               },
                   style: ElevatedButton.styleFrom(
                     backgroundColor: buttonColor[3], elevation: 0.0,
                       fixedSize: Size(MediaQuery.of(context).size.width/4, 70)
                   ),
                   child:  Image.asset('assets/rainy.png',width: MediaQuery.of(context).size.width/6,height: 70,)
               ),
             ],
           ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: (){
                  changeWeather(logCreationManager, 4);
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor[4], elevation: 0.0,
                        fixedSize: Size(MediaQuery.of(context).size.width/4, 70)
                    ),
                    child:  Image.asset('assets/snow.png',width: MediaQuery.of(context).size.width/6,height: 70)
                ),
                ElevatedButton(
                    onPressed: (){
                  changeWeather(logCreationManager, 5);
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor[5], elevation: 0.0,
                        fixedSize: Size(MediaQuery.of(context).size.width/4, 70)
                    ),
                    child:  Image.asset('assets/lightning.png',width: MediaQuery.of(context).size.width/6,height: 70,)
                ),
                ElevatedButton(
                    onPressed: (){
                  changeWeather(logCreationManager, 6);
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor[6], elevation: 0.0,
                        fixedSize: Size(MediaQuery.of(context).size.width/4, 70)
                    ),
                    child:  Image.asset('assets/windy.png',width: MediaQuery.of(context).size.width/6,height: 70,)
                ),
                ElevatedButton(
                    onPressed: (){
                  changeWeather(logCreationManager, 7);
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor[7], elevation: 0.0,
                      fixedSize: Size(MediaQuery.of(context).size.width/4, 70)
                    ),
                    child:  Image.asset('assets/night.png',)
                ),
              ],
            ),
            Flexible(child: Container(), flex: 4,),
          ],
        ),
      ),
    );
  }
}
