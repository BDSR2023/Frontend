import 'package:flutter/material.dart';

// FollowerScreen 클래스 정의
class FollowerScreen extends StatefulWidget {
  final int currentPageIndex;

  // 생성자 함수
  FollowerScreen({this.currentPageIndex = 0});

  @override
  _FollowerScreenState createState() => _FollowerScreenState();
}

class _FollowerScreenState extends State<FollowerScreen> {
  // PageController와 현재 페이지 인덱스 변수 선언
  late PageController _pageController;
  int _currentPageIndex = 0;

  // 팔로워와 팔로잉 목록 데이터
  List<String> follower_names = ['김윤재', '정서현', '심승우', '전준', '등등 ㅎ'];
  List<String> follow_names = ['김윤지', '서명건', '이민우', '안지현', '등등ㅋ'];

  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    // 현재 페이지 인덱스 초기화
    _currentPageIndex = widget.currentPageIndex;
    // PageController 초기화
    _pageController = PageController(initialPage: _currentPageIndex);
  }

  @override
  void dispose() {
    // PageController 해제
    _pageController.dispose();
    super.dispose();
  }

  // 페이지 변경 시 호출되는 함수
  void _onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  // 네비게이션 바 아이템 선택 시 호출되는 함수
  void _onNavItemTapped(int index) {
    if (_currentPageIndex != index) {
      setState(() {
        _currentPageIndex = index;
      });
      _pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  // 검색 쿼리 변경 시 호출되는 함수
  void _onSearchQueryChanged(String query) {
    setState(() {
      searchQuery = query;
    });
  }

  // 검색된 이름 리스트 반환 함수
  List<String> getFilteredNames(List<String> names) {
    return names
        .where((name) => name.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // 뒤로가기 버튼 클릭 시 현재 화면 종료
            Navigator.pop(context);
          },
          color: Colors.black,
        ),
        title: Text(
          'BADARAMSA_',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48),
          child: Column(
            children: [
              BottomNavigationBar(
                backgroundColor: Colors.white,
                elevation: 0.0,
                currentIndex: _currentPageIndex,
                onTap: _onNavItemTapped,
                items: [
                  BottomNavigationBarItem(
                    icon: SizedBox.shrink(),
                    label: '팔로워',
                  ),
                  BottomNavigationBarItem(
                    icon: SizedBox.shrink(),
                    label: '팔로잉',
                  ),
                ],
              ),
              Container(
                height: 1.0,
                color: Colors.black.withOpacity(0.2),
              ),
            ],
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: [
          // 팔로워 목록 페이지
          Container(
            color: Colors.white,
            child: Center(
              child: Column(
                children: [
                  // 검색 필드
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 30.0,
                      child: TextField(
                        onChanged: _onSearchQueryChanged,
                        decoration: InputDecoration(
                          labelText: '검색',
                          filled: true,
                          fillColor: Colors.blue.shade100,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // 검색 결과를 나타내는 리스트뷰
                  Expanded(
                    child: ListView.builder(
                      itemCount: getFilteredNames(follower_names).length,
                      itemBuilder: (context, index) {
                        final name = getFilteredNames(follower_names)[index];
                        return ListTile(
                          leading: Icon(Icons.account_circle),
                          title: Row(
                            children: [
                              Text(name, style: TextStyle(color: Colors.black)),
                              Text('       팔로우', style: TextStyle(color: Colors.blue)),
                            ],
                          ),
                          trailing: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey,
                            ),
                            onPressed: () {
                              // 팔로워 삭제 버튼 클릭 시 동작
                            },
                            child: Text('삭제', style: TextStyle(color: Colors.black)),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          // 팔로잉 목록 페이지
          Container(
            color: Colors.white,
            child: Center(
              child: Column(
                children: [
                  // 검색 필드
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 30.0,
                      child: TextField(
                        onChanged: _onSearchQueryChanged,
                        decoration: InputDecoration(
                          labelText: '검색',
                          filled: true,
                          fillColor: Colors.blue.shade100,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // 검색 결과를 나타내는 리스트뷰
                  Expanded(
                    child: ListView.builder(
                      itemCount: getFilteredNames(follow_names).length,
                      itemBuilder: (context, index) {
                        final name = getFilteredNames(follow_names)[index];
                        return ListTile(
                          leading: Icon(Icons.account_circle),
                          title: Row(
                            children: [
                              Text(name, style: TextStyle(color: Colors.black)),
                            ],
                          ),
                          trailing: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                            onPressed: () {
                              // 팔로잉 버튼 클릭 시 동작
                            },
                            child: Text('팔로잉', style: TextStyle(color: Colors.black)),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
