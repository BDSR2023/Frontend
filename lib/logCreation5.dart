import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;



class logCreation5 extends StatefulWidget {
  const logCreation5({Key? key}) : super(key: key);

  @override
  State<logCreation5> createState() => _logCreation5State();
}

class _logCreation5State extends State<logCreation5> {
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
    });
  }

  void _changeButtonColor2() {
    setState(() {
      _buttonColor1 = Colors.blue;
      _buttonColor2 = Colors.green;
      _buttonColor3 = Colors.blue;
    });
  }

  void _changeButtonColor3() {
    setState(() {
      _buttonColor1 = Colors.blue;
      _buttonColor2 = Colors.blue;
      _buttonColor3 = Colors.green;
    });
  }
  void _changeButtonColor4() {
    setState(() {
      _buttonColor4 = Colors.green;
      _buttonColor5 = Colors.blue;
      _buttonColor6 = Colors.blue;
    });
  }
  void _changeButtonColor5() {
    setState(() {
      _buttonColor4 = Colors.blue;
      _buttonColor5 = Colors.green;
      _buttonColor6 = Colors.blue;
    });
  }
  void _changeButtonColor6() {
    setState(() {
      _buttonColor4 = Colors.blue;
      _buttonColor5 = Colors.blue;
      _buttonColor6 = Colors.green;
    });
  }
  void _changeButtonColor7() {
    setState(() {
      _buttonColor7 = Colors.green;
      _buttonColor8 = Colors.blue;
      _buttonColor9 = Colors.blue;
    });
  }
  void _changeButtonColor8() {
    setState(() {
      _buttonColor7 = Colors.blue;
      _buttonColor8 = Colors.green;
      _buttonColor9 = Colors.blue;
    });
  }
  void _changeButtonColor9() {
    setState(() {
      _buttonColor7 = Colors.blue;
      _buttonColor8 = Colors.blue;
      _buttonColor9 = Colors.green;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(30, 50, 0, 10),
                child:Text('조류'),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _changeButtonColor1,
                  child: Text('강함'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(140, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: _buttonColor1,
                  ),
                ),
                ElevatedButton(
                  onPressed:_changeButtonColor2,
                  child: Text('중간'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(140, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: _buttonColor2,
                  ),
                ),
                ElevatedButton(
                  onPressed: _changeButtonColor3,
                  child: Text('약함'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(140, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: _buttonColor3,
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(30, 10, 0, 10),
                child:Text('파도'),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _changeButtonColor4,
                  child: Text('강함'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(140, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: _buttonColor4,
                  ),
                ),
                ElevatedButton(
                  onPressed: _changeButtonColor5,
                  child: Text('중간'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(140, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: _buttonColor5,
                  ),
                ),
                ElevatedButton(
                  onPressed: _changeButtonColor6,
                  child: Text('약함'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(140, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: _buttonColor6,
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(30, 10, 0, 10),
                child:Text('써지'),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _changeButtonColor7,
                  child: Text('강함'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(140, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: _buttonColor7,
                  ),
                ),
                ElevatedButton(
                  onPressed: _changeButtonColor8,
                  child: Text('중간'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(140, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: _buttonColor8,
                  ),
                ),
                ElevatedButton(
                  onPressed: _changeButtonColor9,
                  child: Text('약함'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(140, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: _buttonColor9,
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(30, 10, 0, 10),
                child:Text('수온'),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child:Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                  height: 40,
                    alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(32, 0, 15, 0),
                  child: Text('수면',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),
                  )
                ),
              ),
              Expanded(child:
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    fillColor: Colors.transparent,
                    filled: true,
                  ),
                ),
              )),
              Expanded(child: Text('°C'))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child:Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    height: 40,
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(32, 0, 15, 0),
                    child: Text('바틈',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),)
                ),
              ),
              Expanded(child:
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    fillColor: Colors.transparent,
                    filled: true,
                  ),
                ),
              )),
              Expanded(child: Text('°C'))
            ],
          ),
          Text(''),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
                child:Text('시야'),
              )
            ],
          ),
          Row(
            children: [
              Expanded(child:
              Container(
                margin: EdgeInsets.fromLTRB(30, 0, 20, 0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    fillColor: Colors.transparent,
                    filled: true,
                  ),
                ),
              )),
              Expanded(child: Text('m'))
            ],
          )

        ],
      ),
    );
  }
}
