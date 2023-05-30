import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;



class logCreation3 extends StatefulWidget {
  const logCreation3({Key? key}) : super(key: key);

  @override
  State<logCreation3> createState() => _logCreation3State();
}

class _logCreation3State extends State<logCreation3> {
  Color _buttonColor1 = Colors.blue;
  Color _buttonColor2 = Colors.blue;
  Color _buttonColor3 = Colors.blue;
  Color _buttonColor4 = Colors.blue;
  Color _buttonColor5 = Colors.blue;
  Color _buttonColor6 = Colors.blue;
  Color _buttonColor7 = Colors.blue;
  Color _buttonColor8 = Colors.blue;
  Color _buttonColor9 = Colors.blue;

  void _changeButtonColor1() {
    setState(() {
      _buttonColor1 = Colors.green;
      _buttonColor2 = Colors.blue;
      _buttonColor3 = Colors.blue;
      _buttonColor4 = Colors.blue;
      _buttonColor5 = Colors.blue;
    });
  }
  void _changeButtonColor2() {
    setState(() {
      _buttonColor1 = Colors.blue;
      _buttonColor2 = Colors.green;
      _buttonColor3 = Colors.blue;
      _buttonColor4 = Colors.blue;
      _buttonColor5 = Colors.blue;
    });
  }
  void _changeButtonColor3() {
    setState(() {
      _buttonColor1 = Colors.blue;
      _buttonColor2 = Colors.blue;
      _buttonColor3 = Colors.green;
      _buttonColor4 = Colors.blue;
      _buttonColor5 = Colors.blue;
    });
  }
  void _changeButtonColor4() {
    setState(() {
      _buttonColor1 = Colors.blue;
      _buttonColor2 = Colors.blue;
      _buttonColor3 = Colors.blue;
      _buttonColor4 = Colors.green;
      _buttonColor5 = Colors.blue;
    });
  }
  void _changeButtonColor5() {
    setState(() {
      _buttonColor1 = Colors.blue;
      _buttonColor2 = Colors.blue;
      _buttonColor3 = Colors.blue;
      _buttonColor4 = Colors.blue;
      _buttonColor5 = Colors.green;
    });
  }
  void _changeButtonColor6() {
    setState(() {
      _buttonColor6 = Colors.green;
      _buttonColor7 = Colors.blue;
      _buttonColor8 = Colors.blue;
      _buttonColor9 = Colors.blue;
    });
  }
  void _changeButtonColor7() {
    setState(() {
      _buttonColor6 = Colors.blue;
      _buttonColor7 = Colors.green;
      _buttonColor8 = Colors.blue;
      _buttonColor9 = Colors.blue;
    });
  }
  void _changeButtonColor8() {
    setState(() {
       _buttonColor6 = Colors.blue;
       _buttonColor7 = Colors.blue;
       _buttonColor8 = Colors.green;
       _buttonColor9 = Colors.blue;
    });
  }
  void _changeButtonColor9() {
    setState(() {
       _buttonColor6 = Colors.blue;
       _buttonColor7 = Colors.blue;
       _buttonColor8 = Colors.blue;
       _buttonColor9 = Colors.green;
    });
  }

  @override
  Widget build(BuildContext context) {
    var diving_unit=['싱글','더블','사이드마운트','리브리더','기타','스테이지','테코'];

    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(30, 50, 0, 0),
                child: Text('다이빙 유닛'),
              ),
            ],
          ),
          Container(
            height: 20,
            width: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 15, 0),
                child: ElevatedButton(
                  onPressed: _changeButtonColor1,
                  child: Text('싱글'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),primary: _buttonColor1,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: ElevatedButton(
                  onPressed: _changeButtonColor2,
                  child: Text('더블'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),primary: _buttonColor2,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: ElevatedButton(
                  onPressed: _changeButtonColor3,
                  child: Text('사이드마운트'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(120, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),primary: _buttonColor3,
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 20,
            width: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 15, 0),
                child: ElevatedButton(
                  onPressed: _changeButtonColor4,
                  child: Text('리브리더'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),primary: _buttonColor4,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: ElevatedButton(
                  onPressed: _changeButtonColor5,
                  child: Text('기타'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),primary: _buttonColor5,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 50,
            width: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(30, 30, 0, 0),
                child: Text('기체'),
              )
            ],
          ),
          Container(
            height: 20,
            width: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 15, 0),
                child: ElevatedButton(
                  onPressed: _changeButtonColor6,
                  child: Text('에어'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ), primary: _buttonColor6
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: ElevatedButton(
                  onPressed: _changeButtonColor7,
                  child: Text('나이트룩스'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(120, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ), primary: _buttonColor7
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: ElevatedButton(
                  onPressed: _changeButtonColor8,
                  child: Text('트라이밀'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ), primary: _buttonColor8
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 20,
            width: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 15, 0),
                child: ElevatedButton(
                  onPressed: _changeButtonColor9,
                  child: Text('기타'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ), primary: _buttonColor9
                  ),
                ),
              ),
            ],
          )
        ],
      )
    );
  }
}
