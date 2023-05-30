import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;



class log_create4 extends StatefulWidget {
  const log_create4({Key? key}) : super(key: key);

  @override
  State<log_create4> createState() => _log_create4State();
}

class _log_create4State extends State<log_create4> {

  final _belt = ['0','1','2','3','4','5','6','7','8','9','10','11','12','13','14'];
  final _pocket=['0','1','2','3','4','5','6','7','8','9','10','11','12','13','14'];
  String? _selectedbelt;
  String? _selectedpocket;

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

  void _changeButtonColor1() {
    setState(() {
      _buttonColor1 = Colors.green;
      _buttonColor2 = Colors.blue;
    });
  }
  void _changeButtonColor2() {
    setState(() {
      _buttonColor1 = Colors.blue;
      _buttonColor2 = Colors.green;
    });
  }
  void _changeButtonColor3() {
    setState(() {
      _buttonColor3 = Colors.green;
      _buttonColor4 = Colors.blue;
    });
  }
  void _changeButtonColor4() {
    setState(() {
      _buttonColor3 = Colors.blue;
      _buttonColor4 = Colors.green;
    });
  }
  void _changeButtonColor5() {
    setState(() {
      _buttonColor5 = Colors.green;
      _buttonColor6 = Colors.blue;
    });
  }
  void _changeButtonColor6() {
    setState(() {
      _buttonColor5 = Colors.blue;
      _buttonColor6 = Colors.green;
    });
  }
  void _changeButtonColor7() {
    setState(() {
      if(_buttonColor7 == Colors.blue){
        _buttonColor7 = Colors.green;
      }
      else
        _buttonColor7 = Colors.blue;
    });
  }
  void _changeButtonColor8() {
    setState(() {
      if(_buttonColor8 == Colors.blue){
        _buttonColor8 = Colors.green;
      }
      else
        _buttonColor8 = Colors.blue;
    });
  }
  void _changeButtonColor9() {
    setState(() {
      if(_buttonColor9 == Colors.blue){
        _buttonColor9 = Colors.green;
      }
      else
        _buttonColor9 = Colors.blue;
    });
  }
  void _changeButtonColor10() {
    setState(() {
      if(_buttonColor10 == Colors.blue){
        _buttonColor10 = Colors.green;
      }
      else
        _buttonColor10 = Colors.blue;
    });
  }
  void _changeButtonColor11() {
    setState(() {
      _buttonColor11 = Colors.green;
      _buttonColor12 = Colors.blue;
    });
  }
  void _changeButtonColor12() {
    setState(() {
      _buttonColor11 = Colors.blue;
      _buttonColor12 = Colors.green;
    });
  }





  @override
  void initState() {
  super.initState();
  setState(() {
  _selectedbelt = _belt[0];
  _selectedpocket=_pocket[0];
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
                margin: EdgeInsets.fromLTRB(40, 50, 0, 0),
                child:Text('탱크'),
              )
            ],
          ),
          Text(""),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: ElevatedButton(onPressed: _changeButtonColor1,
                    child: Text('알루미늄'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(200, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),primary: _buttonColor1
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: ElevatedButton(onPressed: _changeButtonColor2,
                    child: Text('스틸'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(200, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),primary: _buttonColor2
                  ),),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(40, 25, 0, 0),
                child:Text('탱크 용량'),
              )
            ],
          ),
          Text(' '),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: ElevatedButton(onPressed: _changeButtonColor3,
                  child: Text('80 큐빅'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(200, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),primary: _buttonColor3
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: ElevatedButton(onPressed: _changeButtonColor4,
                  child: Text('63 큐빅'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(200, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),primary: _buttonColor4
                  ),),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(40, 25, 0, 0),
                child:Text('슈트'),
              )
            ],
          ),
          Text(""),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: ElevatedButton(onPressed: _changeButtonColor5,
                  child: Text('웻(WET)'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(200, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),primary: _buttonColor5
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: ElevatedButton(onPressed: _changeButtonColor6,
                  child: Text('드라이(DRY)'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(200, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),primary: _buttonColor6
                  ),),
              )
            ],
          ),
          Text(''),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: ElevatedButton(onPressed: _changeButtonColor7,
                child: Text('부츠'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(93, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),primary: _buttonColor7
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: ElevatedButton(onPressed: _changeButtonColor8,
                  child: Text('베스트'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(93, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),primary: _buttonColor8
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: ElevatedButton(onPressed: _changeButtonColor9,
                  child: Text('장갑'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(93, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),primary: _buttonColor9
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: ElevatedButton(onPressed: _changeButtonColor10,
                  child: Text('후드'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(93, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),primary: _buttonColor10
                  ),
                ),
              ),
            ],
          ),
          Text(''),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(40, 10, 0, 0),
                child:Text('웨이트'),
              )
            ],
          ),
          Text(''),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(40, 0, 15, 0),
                child: ElevatedButton(onPressed: (){},
                  child: Text('벨트'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(200, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 0, 25, 0),
                child: Row(
                  children: [
                    Container(
                      child: DropdownButton(
                        value:  _selectedbelt,
                        items: _belt
                            .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedbelt = value!;
                          });
                        },
                      ),
                    ),
                    Text('KG')
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(40, 0, 15, 0),
                child: ElevatedButton(onPressed: (){},
                  child: Text('포켓'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(200, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 0, 25, 0),
                child: Row(
                  children: [
                    Container(
                      child: DropdownButton(
                        value:  _selectedpocket,
                        items: _pocket
                            .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedpocket = value!;
                          });
                        },
                      ),
                    ),
                    Text('KG')
                  ],
                ),
              ),
            ],
          ),
          Text(''),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(40, 10, 0, 0),
                child:Text('워터 타입'),
              )
            ],
          ),
          Text(""),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: ElevatedButton(onPressed: _changeButtonColor11,
                  child: Text('해수'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(200, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),primary: _buttonColor11
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: ElevatedButton(onPressed: _changeButtonColor12,
                  child: Text('담수'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(200, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),primary: _buttonColor12
                  ),),
              )
            ],
          ),
        ],
      ),
    );
  }
}
