import 'package:flutter/material.dart';
import 'package:logbook/HomePage.dart';
import 'logCreation1.dart';
import 'logCreation2.dart';
import 'logCreation3.dart';
import 'logCreation4.dart';
import 'logCreation5.dart';
import 'logCreation6.dart';
import 'logCreation7.dart';
import 'logCreation8.dart';
import 'resultPage.dart';


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
    logCreation8(),
    logCreation7(),
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
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: Scaffold(
        body: _logCreatePages[_currentIndex],
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          elevation: 0.0,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    int newIndex = _currentIndex - 1;
                    if (newIndex < 0) {
                      Navigator.pop(context);
                    }
                    else {
                      _changeBody(newIndex);
                    }
                  },
                  child: Container(
                    width: 60, height: 60,
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      size: 50, color: Colors.grey,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    int newIndex = _currentIndex + 1;
                    if (newIndex >= _logCreatePages.length) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => homePage()),
                      );
                    }
                    else {
                      _changeBody(newIndex);
                    }
                  },
                  child: Container(
                    width: 60, height: 60,
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 50, color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
