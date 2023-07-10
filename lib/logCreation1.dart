import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;



class logCreation1 extends StatefulWidget {
  const logCreation1({Key? key}) : super(key: key);

  @override
  State<logCreation1> createState() => _logCreation1State();
}

class _logCreation1State extends State<logCreation1> {
  final _year = ['2023','2022','2021','2020','2019','2018'];
  final _month= ['1','2','3','4','5','6','7','8','9','10','11','12'];
  final _day= ['1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17'
  ,'18','19','20','21','22','23','24','25','26','27','28','29','30','31'];
  String? _selectedYear;
  String? _selctedMonth;
  String? _selctedDay;

  @override
  void initState() {
    super.initState();
    setState(() {
      _selectedYear = _year[0];
      _selctedMonth = _month[0];
      _selctedDay = _day[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 50, 0, 0),
                    child: Text('날짜',),
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
                          child: DropdownButton(
                          value: _selectedYear,
                          items: _year
                              .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              _selectedYear = value!;
                            });
                          },
            ),
                        ),
                        Text('년')
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 25, 0),
                    child: Row(
                      children: [
                        Container(
                          child: DropdownButton(
                            value:  _selctedMonth,
                            items: _month
                                .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text(e),
                            ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                _selctedMonth = value!;
                              });
                            },
                          ),
                        ),
                        Text('월')
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 25, 0),
                    child: Row(
                      children: [
                        Container(
                          child: DropdownButton(
                            value:  _selctedDay ,
                            items: _day
                                .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text(e),
                            ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                _selctedDay  = value!;
                              });
                            },
                          ),
                        ),
                        Text('일')
                      ],
                    ),
                  ),
                ],
              ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(30, 30, 0, 0),
                child: Text('지역'),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 10),

                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 20, 20),
                height: 45, // 높이를 60으로 설정
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('확인',style: TextStyle(color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(30, 30, 0, 0),
                child: Text('다이빙 사이트(POINT)'),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),

            child: TextField(
              decoration: InputDecoration(
                filled: true,
                labelText: '포인트를 입력해 주세요',
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(30, 50, 0, 0),
                child: Text('날씨'),
              ),
            ],
          ),
         Text(" "),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             ElevatedButton(onPressed: (){},
                 style: ButtonStyle(
                   backgroundColor: MaterialStateProperty.all<Color>(Color(0xffd1dce6)),
                 ),
                 child:  Image.asset('sunny.png',width: MediaQuery.of(context).size.width/5.5,height: 70)),
             ElevatedButton(onPressed: (){},
                 style: ButtonStyle(
                   backgroundColor: MaterialStateProperty.all<Color>(Color(0xffd1dce6)),
                 ),
                 child:  Image.asset('cloudy.png',width: MediaQuery.of(context).size.width/5.5,height: 70,)),
             ElevatedButton(onPressed: (){},
                 style: ButtonStyle(
                   backgroundColor: MaterialStateProperty.all<Color>(Color(0xffd1dce6)),
                 ),
                 child:  Image.asset('cloudy2.png',width: MediaQuery.of(context).size.width/5.5,height: 70,)),
             ElevatedButton(onPressed: (){},
                 style: ButtonStyle(
                   backgroundColor: MaterialStateProperty.all<Color>(Color(0xffd1dce6)),
                 ),
                 child:  Image.asset('rainy.png',width: MediaQuery.of(context).size.width/5.5,height: 70,)),
           ],
         ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xffd1dce6)),
                  ),
                  child:  Image.asset('snow.png',width: MediaQuery.of(context).size.width/5.5,height: 70)),
              ElevatedButton(onPressed: (){},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xffd1dce6)),
                  ),
                  child:  Image.asset('lightning.png',width: MediaQuery.of(context).size.width/5.5,height: 70,)),
              ElevatedButton(onPressed: (){},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xffd1dce6)),
                  ),
                  child:  Image.asset('windy.png',width: MediaQuery.of(context).size.width/5.5,height: 70,)),
              ElevatedButton(onPressed: (){},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xffd1dce6)),
                  ),
                  child:  Image.asset('cloudly3.png',width: MediaQuery.of(context).size.width/5.5,height: 70,)),
            ],
          )
        ],
      ),
    );
  }
}