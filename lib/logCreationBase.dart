import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'logCreation1.dart';
import 'logCreation2.dart';
import 'logCreation3.dart';
import 'logCreation4.dart';
import 'logCreation5.dart';
import 'logCreation6.dart';
import 'logCreation7.dart';
import 'logCreation8.dart';
import 'resultPage.dart';
import 'logCreationManager.dart';


class logCreationsBase extends StatefulWidget {
  const logCreationsBase({Key? key}) : super(key: key);

  @override
  _logCreationsBaseState createState() => _logCreationsBaseState();
}

class _logCreationsBaseState extends State<logCreationsBase> {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LogCreationManager(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: PageView(
          // 페이지들을 배열로 추가합니다.
          children: [
            logCreation1(),
            logCreation2(),
            logCreation3(),
            logCreation4(),
            logCreation5(),
            logCreation6(),
            logCreation8(),
            logCreation7(),
          ],
        ),
      ),
    );
  }
}
