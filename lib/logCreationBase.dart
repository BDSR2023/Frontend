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



//여기서의 변수들은 logCreationManager.dart에 저장됩니다.
//provider사용법을 참고해주세요.



//위의 동그랑미 이동 위젯.
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int totalPageCount;
  final int currentPage;

  CustomAppBar({required this.totalPageCount, required this.currentPage});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent, elevation: 0.0,
      automaticallyImplyLeading: false,
      leading:  IconButton(
          onPressed: () { Navigator.pop(context); },
          color: Color(0xffb2b2b2),
          icon: Icon(Icons.arrow_back_ios_rounded,size: 40,)),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          totalPageCount,
              (index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: CircleAvatar(
              backgroundColor: index == currentPage ? Colors.black : Colors.grey,
              radius: 5,
            ),
          ),
        ),
      ),
      actions: [
        SizedBox(width: 40,)
      ],
    );
  }
}



class logCreationsBase extends StatefulWidget {
  const logCreationsBase({Key? key}) : super(key: key);

  @override
  _logCreationsBaseState createState() => _logCreationsBaseState();
}

class _logCreationsBaseState extends State<logCreationsBase> {
  final PageController pageController = PageController();
  int currentPage = 0;
  int totalPageCount = 8;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LogCreationManager(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: CustomAppBar(totalPageCount: totalPageCount, currentPage: currentPage),
        body: PageView(
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              currentPage = index;
            });
          },
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
