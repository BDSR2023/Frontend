import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;



class logCreation2 extends StatefulWidget {
  const logCreation2({Key? key}) : super(key: key);

  @override
  State<logCreation2> createState() => _logCreation2State();
}

class _logCreation2State extends State<logCreation2> {
  Color _buttonColor1 = Colors.blue;
  Color _buttonColor2 = Colors.blue;
  Color _buttonColor3 = Colors.blue;
  Color _buttonColor4 = Colors.blue;
  Color _buttonColor5 = Colors.blue;
  Color _buttonColor6 = Colors.blue;
  Color _buttonColor7 = Colors.blue;
  Color _buttonColor8 = Colors.blue;
  Color _buttonColor9 = Colors.blue;
  Color _buttonColor10 = Colors.blue;
  Color _buttonColor11 = Colors.blue;
  Color _buttonColor12 = Colors.blue;
  Color _buttonColor13 = Colors.blue;
  Color _buttonColor14 = Colors.blue;
  Color _buttonColor15 = Colors.blue;
  Color _buttonColor16 = Colors.blue;
  Color _buttonColor17 = Colors.blue;
  Color _buttonColor18 = Colors.blue;
  Color _buttonColor19 = Colors.blue;

  void _changeButtonColor1() {
    setState(() {
      if(_buttonColor1 == Colors.blue){
        _buttonColor1 = Colors.green;
      }
      else
        _buttonColor1 = Colors.blue;
    });
  }

  void _changeButtonColor2() {
    setState(() {
      if (_buttonColor2 == Colors.blue) {
        _buttonColor2 = Colors.green;
      }
      else
        _buttonColor2 = Colors.blue;
    });
  }
  void _changeButtonColor3() {
    setState(() {
      if (_buttonColor3 == Colors.blue) {
        _buttonColor3 = Colors.green;
      }
      else
        _buttonColor3 = Colors.blue;
    });
  }
  void _changeButtonColor4() {
    setState(() {
      if (_buttonColor4 == Colors.blue) {
        _buttonColor4 = Colors.green;
      }
      else
        _buttonColor4 = Colors.blue;
    });
  }
  void _changeButtonColor5() {
    setState(() {
      if (_buttonColor5 == Colors.blue) {
        _buttonColor5 = Colors.green;
      }
      else
        _buttonColor5 = Colors.blue;
    });
  }
  void _changeButtonColor6() {
    setState(() {
      if (_buttonColor6 == Colors.blue) {
        _buttonColor6 = Colors.green;
      }
      else
        _buttonColor6 = Colors.blue;
    });
  }
  void _changeButtonColor7() {
    setState(() {
      if (_buttonColor7 == Colors.blue) {
        _buttonColor7 = Colors.green;
      }
      else
        _buttonColor7 = Colors.blue;
    });
  }
  void _changeButtonColor8() {
    setState(() {
      if (_buttonColor8 == Colors.blue) {
        _buttonColor8 = Colors.green;
      }
      else
        _buttonColor8 = Colors.blue;
    });
  }
  void _changeButtonColor9() {
    setState(() {
      if (_buttonColor9 == Colors.blue) {
        _buttonColor9 = Colors.green;
      }
      else
        _buttonColor9 = Colors.blue;
    });
  }
  void _changeButtonColor10() {
    setState(() {
      if (_buttonColor10 == Colors.blue) {
        _buttonColor10 = Colors.green;
      }
      else
        _buttonColor10 = Colors.blue;
    });
  }
  void _changeButtonColor11() {
    setState(() {
      if (_buttonColor11 == Colors.blue) {
        _buttonColor11 = Colors.green;
      }
      else
        _buttonColor11 = Colors.blue;
    });
  }
  void _changeButtonColor12() {
    setState(() {
      if (_buttonColor12 == Colors.blue) {
        _buttonColor12 = Colors.green;
      }
      else
        _buttonColor12 = Colors.blue;
    });
  }
  void _changeButtonColor13() {
    setState(() {
      if (_buttonColor13 == Colors.blue) {
        _buttonColor13 = Colors.green;
      }
      else
        _buttonColor13 = Colors.blue;
    });
  }
  void _changeButtonColor14() {
    setState(() {
      if (_buttonColor14 == Colors.blue) {
        _buttonColor14 = Colors.green;
      }
      else
        _buttonColor14 = Colors.blue;
    });
  }
  void _changeButtonColor15() {
    setState(() {
      if (_buttonColor15 == Colors.blue) {
        _buttonColor15 = Colors.green;
      }
      else
        _buttonColor15 = Colors.blue;
    });
  }
  void _changeButtonColor16() {
    setState(() {
      if (_buttonColor16 == Colors.blue) {
        _buttonColor16 = Colors.green;
      }
      else
        _buttonColor16 = Colors.blue;
    });

  }
  void _changeButtonColor17() {
    setState(() {
      if (_buttonColor17== Colors.blue) {
        _buttonColor17 = Colors.green;
      }
      else
        _buttonColor17 = Colors.blue;
    });

  }
  void _changeButtonColor18() {
    setState(() {
      if (_buttonColor18 == Colors.blue) {
        _buttonColor18 = Colors.green;
      }
      else
        _buttonColor18 = Colors.blue;
    });

  }



  @override
  Widget build(BuildContext context) {
    var diving_form=['보트','비치','DPV','섬','리브어보드','고도','난파선','아이스','드라이슈트',
    '케이브','케빈','조류','교육','야간','동영상','사진','대심도','기타'];

    return Scaffold(
      body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(30, 50, 0, 0),
                child: Text('다이빙 종류',style: TextStyle(fontWeight: FontWeight.bold ),),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 0, 0, 30),
                child: Text('중복 선택이 가능합니다.'),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: _changeButtonColor1,
                      child: Text(diving_form[0]),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(100, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        primary: _buttonColor1,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: _changeButtonColor2,
                      child: Text(diving_form[1]),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(100, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),primary: _buttonColor2
                      ),
                    ),
                    ElevatedButton(
                      onPressed: _changeButtonColor3,
                      child: Text(diving_form[2]),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(100, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),primary: _buttonColor3
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed:  _changeButtonColor4,
                      child: Text(diving_form[3]),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(100, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),primary: _buttonColor4
                      ),
                    ),
                    ElevatedButton(
                      onPressed: _changeButtonColor5,
                      child: Text(diving_form[4]),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(100, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),primary: _buttonColor5
                      ),
                    ),
                    ElevatedButton(
                      onPressed: _changeButtonColor6,
                      child: Text(diving_form[5]),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(100, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),primary: _buttonColor6
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: _changeButtonColor7,
                      child: Text(diving_form[6]),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(100, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),primary: _buttonColor7
                      ),
                    ),
                    ElevatedButton(
                      onPressed: _changeButtonColor8,
                      child: Text(diving_form[7]),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(100, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),primary: _buttonColor8
                      ),
                    ),
                    ElevatedButton(
                      onPressed: _changeButtonColor9,
                      child: Text(diving_form[8]),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(100, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),primary: _buttonColor9
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: _changeButtonColor10,
                      child: Text(diving_form[9]),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(100, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),primary: _buttonColor10
                      ),
                    ),
                    ElevatedButton(
                      onPressed: _changeButtonColor11,
                      child: Text(diving_form[10]),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(100, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),primary: _buttonColor11
                      ),
                    ),
                    ElevatedButton(
                      onPressed: _changeButtonColor12,
                      child: Text(diving_form[11]),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(100, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),primary: _buttonColor12
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: _changeButtonColor13,
                      child: Text(diving_form[12]),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(100, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),primary: _buttonColor13
                      ),
                    ),
                    ElevatedButton(
                      onPressed: _changeButtonColor14,
                      child: Text(diving_form[13]),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(100, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),primary: _buttonColor14
                      ),
                    ),
                    ElevatedButton(
                      onPressed: _changeButtonColor15,
                      child: Text(diving_form[14]),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(100, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),primary: _buttonColor15
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: _changeButtonColor16,
                      child: Text(diving_form[15]),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(100, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),primary: _buttonColor16
                      ),
                    ),
                    ElevatedButton(
                      onPressed: _changeButtonColor17,
                      child: Text(diving_form[16]),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(100, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),primary: _buttonColor17
                      ),
                    ),
                    ElevatedButton(
                      onPressed: _changeButtonColor18,
                      child: Text(diving_form[17]),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(100, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),primary: _buttonColor18
                      ),
                    )
                  ],
                ),
              )
            ],

          ),
    );
  }
}
