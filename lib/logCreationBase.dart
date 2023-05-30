import 'package:flutter/material.dart';
import 'package:logbook/profile.dart';
import 'homePage.dart';
import 'loginPage.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'logCreation1.dart';
import 'logCreation2.dart';
import 'logCreation3.dart';
import 'logCreation4.dart';
import 'logCreation5.dart';
import 'logCreation6.dart';
import 'logCreation7.dart';
import 'logCreation8.dart';
import 'logCreation9.dart';


class logCreationsBase extends StatefulWidget {
  const logCreationsBase({Key? key}) : super(key: key);

  @override
  _logCreationsBaseState createState() => _logCreationsBaseState();
}

class _logCreationsBaseState extends State<logCreationsBase> {
  int _currentIndex = 0;

  List<Widget> _logCreatePages = [
    logCreation1(),
    logCreation2(),
    logCreation3(),
    logCreation4(),
    logCreation5(),
    logCreation6(),
    logCreation7(),
    logCreation8(),
    logCreation9(),
  ];

  void _changeBody(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Color(0xffd1dce6)),
      home: Scaffold(
        body: _logCreatePages[_currentIndex],
        bottomNavigationBar: BottomAppBar(
          color: Color(0xffd1dce6),
          elevation: 0.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: IconButton(
                  onPressed: () {
                    int newIndex = _currentIndex - 1;
                    if (newIndex < 0) {
                      newIndex = _logCreatePages.length - 1;
                    }
                    _changeBody(newIndex);
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
              ),
              Container(
                child: IconButton(
                  onPressed: () {
                    int newIndex = _currentIndex + 1;
                    if (newIndex >= _logCreatePages.length) {
                      newIndex = 0;
                    }
                    _changeBody(newIndex);
                  },
                  icon: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
