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
// import 'resultPage.dart';
import 'logCreationManager.dart';



//여기서의(logCreation1~8) 변수들은 logCreationManager.dart에 저장됩니다.
//provider사용법을 참고해주세요.

//PageView()로 슬라이드 구현.
//각 logCreation1~8마다 DefaultTextStyle()로 폰트 설정.
//logCraetion7과 8은 순서가 바뀌어 있는데, 바꿔야 할것 같습니다.
//logCreation7은 수정필요.(Notion 9주차 회의)

//마지막 부분에 결과창을 붙여주셔야 할 것 같습니다. 
//(resultPage1~5인지, result_frame을 붙여야 하는지는 준이에게 물어봐야 할 것 같습니다.)


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


//위의 위젯 불러와서 아래 위젯의 앱바에서 씁니다.

class logCreationsBase extends StatefulWidget {
  const logCreationsBase({Key? key}) : super(key: key);

  @override
  _logCreationsBaseState createState() => _logCreationsBaseState();
}

class _logCreationsBaseState extends State<logCreationsBase> {
  final PageController pageController = PageController();
  int currentPage = 0; //현재 페이지
  int totalPageCount = 8; //전체 페이지

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
          // 페이지들을 배열로 추가합니다. 페이지를 더 넣고 싶으시면 여기다 넣어주세요. (아마 따로 폰트설정 필요.(DefaultTextStyle()) )
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
