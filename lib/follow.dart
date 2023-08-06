import 'package:flutter/material.dart';

class FollowerScreen extends StatefulWidget {
  final int currentPageIndex;

  FollowerScreen({this.currentPageIndex = 0});

  @override
  _FollowerScreenState createState() => _FollowerScreenState();
}

class _FollowerScreenState extends State<FollowerScreen> {
  late PageController _pageController;
  int _currentPageIndex = 0;

  List<String> follower_names = ['김윤재', '정서현', '심승우', '전준', '등등 ㅎ'];
  List<String> follow_names = ['김윤지', '서명건', '이민우', '안지현', '등등ㅋ'];

  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    _currentPageIndex = widget.currentPageIndex;
    _pageController = PageController(initialPage: _currentPageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

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

  void _onSearchQueryChanged(String query) {
    setState(() {
      searchQuery = query;
    });
  }

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
          Container(
            color: Colors.white,
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 30.0, // TextField의 높이를 조정
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
                            onPressed: () {},
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
          Container(
            color: Colors.white,
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 30.0, // TextField의 높이를 조정
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
                            onPressed: () {},
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
