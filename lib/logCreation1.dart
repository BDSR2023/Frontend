import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'logCreationManager.dart';


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
  var weathers = ['sunny', 'cloudy', 'cloudy2', 'rainy',
    'snow', 'lightning', 'windy', 'night'];

  String? selectedYear;
  String? selectedMonth;
  String? selectedDay;
  String? selectedRegion;
  String? selectedWeather;

  var buttonColor = [Colors.white,Colors.white,Colors.white,Colors.white,
    Colors.white,Colors.white,Colors.white,Colors.white];

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
                      margin: EdgeInsets.fromLTRB(30, 50, 5, 10),
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
               ElevatedButton(onPressed: (){
                 if (selectedWeather == 'sunny') {
                   setState(() {
                     logCreationManager.updateSelectedWeather('none');
                     selectedWeather = 'none';
                     buttonColor[0] = Colors.white;
                   });
                 } else {
                   setState(() {
                     logCreationManager.updateSelectedWeather('sunny');
                     selectedWeather = 'sunny';
                     for (int i = 0; i < 8; i++) {
                       buttonColor[i] = Colors.white;
                     }
                     buttonColor[0] = Color(0xffEBF2FB);
                   });
                  }
                 },
                   style: ButtonStyle(
                     backgroundColor: MaterialStateProperty.all<Color>(buttonColor[0]),
                     elevation: MaterialStateProperty.all(0),
                   ),
                   child:  Image.asset('sunny.png',width: MediaQuery.of(context).size.width/5.5,height: 70,
                     fit: BoxFit.contain,)),
               ElevatedButton(onPressed: (){
                 if (selectedWeather == 'cloudy') {
                   setState(() {
                     logCreationManager.updateSelectedWeather('none');
                     selectedWeather = 'none';
                     buttonColor[1] = Colors.white;
                   });
                 } else {
                   setState(() {
                     logCreationManager.updateSelectedWeather('cloudy');
                     selectedWeather = 'cloudy';
                     for (int i = 0; i < 8; i++) {
                       buttonColor[i] = Colors.white;
                     }
                     buttonColor[1] = Color(0xffEBF2FB);
                   });
                 }
               },
                   style: ButtonStyle(
                     backgroundColor: MaterialStateProperty.all<Color>(buttonColor[1]),
                     elevation: MaterialStateProperty.all(0),
                   ),
                   child:  Image.asset('cloudy.png',width: MediaQuery.of(context).size.width/5.5,height: 70,)),
               ElevatedButton(onPressed: (){
                 if (selectedWeather == 'cloudy2') {
                   setState(() {
                     logCreationManager.updateSelectedWeather('none');
                     selectedWeather = 'none';
                     buttonColor[2] = Colors.white;
                   });
                 } else {
                   setState(() {
                     logCreationManager.updateSelectedWeather('cloudy2');
                     selectedWeather = 'cloudy2';
                     for (int i = 0; i < 8; i++) {
                       buttonColor[i] = Colors.white;
                     }
                     buttonColor[2] = Color(0xffEBF2FB);
                   });
                 }
               },
                   style: ButtonStyle(
                     backgroundColor: MaterialStateProperty.all<Color>(buttonColor[2]),
                     elevation: MaterialStateProperty.all(0),
                   ),
                   child:  Image.asset('cloudy2.png',width: MediaQuery.of(context).size.width/5.5,height: 70,)),
               ElevatedButton(onPressed: (){
                 if (selectedWeather == 'rainy') {
                   setState(() {
                     logCreationManager.updateSelectedWeather('none');
                     selectedWeather = 'none';
                     buttonColor[3] = Colors.white;
                   });
                 } else {
                   setState(() {
                     logCreationManager.updateSelectedWeather('rainy');
                     selectedWeather = 'rainy';
                     for (int i = 0; i < 8; i++) {
                       buttonColor[i] = Colors.white;
                     }
                     buttonColor[3] = Color(0xffEBF2FB);
                   });
                 }
               },
                   style: ButtonStyle(
                     backgroundColor: MaterialStateProperty.all<Color>(buttonColor[3]),
                     elevation: MaterialStateProperty.all(0),
                   ),
                   child:  Image.asset('rainy.png',width: MediaQuery.of(context).size.width/5.5,height: 70,)),
             ],
           ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  if (selectedWeather == 'snow') {
                    setState(() {
                      logCreationManager.updateSelectedWeather('none');
                      selectedWeather = 'none';
                      buttonColor[4] = Colors.white;
                    });
                  } else {
                    setState(() {
                      logCreationManager.updateSelectedWeather('snow');
                      selectedWeather = 'snow';
                      for (int i = 0; i < 8; i++) {
                        buttonColor[i] = Colors.white;
                      }
                      buttonColor[4] = Color(0xffEBF2FB);
                    });
                  }
                },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(buttonColor[4]),
                      elevation: MaterialStateProperty.all(0),
                    ),
                    child:  Image.asset('snow.png',width: MediaQuery.of(context).size.width/5.5,height: 70)),
                ElevatedButton(onPressed: (){
                  if (selectedWeather == 'lightning') {
                    setState(() {
                      logCreationManager.updateSelectedWeather('none');
                      selectedWeather = 'none';
                      buttonColor[5] = Colors.white;
                    });
                  } else {
                    setState(() {
                      logCreationManager.updateSelectedWeather('lightning');
                      selectedWeather = 'lightning';
                      for (int i = 0; i < 8; i++) {
                        buttonColor[i] = Colors.white;
                      }
                      buttonColor[5] = Color(0xffEBF2FB);
                    });
                  }
                },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(buttonColor[5]),
                      elevation: MaterialStateProperty.all(0),
                    ),
                    child:  Image.asset('lightning.png',width: MediaQuery.of(context).size.width/5.5,height: 70,)),
                ElevatedButton(onPressed: (){
                  if (selectedWeather == 'windy') {
                    setState(() {
                      logCreationManager.updateSelectedWeather('none');
                      selectedWeather = 'none';
                      buttonColor[6] = Colors.white;
                    });
                  } else {
                    setState(() {
                      logCreationManager.updateSelectedWeather('windy');
                      selectedWeather = 'windy';
                      for (int i = 0; i < 8; i++) {
                        buttonColor[i] = Colors.white;
                      }
                      buttonColor[6] = Color(0xffEBF2FB);
                    });
                  }
                },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(buttonColor[6]),
                      elevation: MaterialStateProperty.all(0),
                    ),
                    child:  Image.asset('windy.png',width: MediaQuery.of(context).size.width/5.5,height: 70,)),
                ElevatedButton(onPressed: (){
                  if (selectedWeather == 'night') {
                    setState(() {
                      logCreationManager.updateSelectedWeather('none');
                      selectedWeather = 'none';
                      buttonColor[7] = Colors.white;
                    });
                  } else {
                    setState(() {
                      logCreationManager.updateSelectedWeather('night');
                      selectedWeather = 'night';
                      for (int i = 0; i < 8; i++) {
                        buttonColor[i] = Colors.white;
                      }
                      buttonColor[7] = Color(0xffEBF2FB);
                    });
                  }
                },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(buttonColor[7]),
                      elevation: MaterialStateProperty.all(0),
                    ),
                    child:  Image.asset('night.png',width: MediaQuery.of(context).size.width/5.5,height: 70,)),
              ],
            ),
            Flexible(child: Container(), flex: 4,),
          ],
        ),
      ),
    );
  }
}