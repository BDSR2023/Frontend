import 'package:flutter/material.dart';

class FriendSearchPage extends StatefulWidget {
  @override
  _FriendSearchPageState createState() => _FriendSearchPageState();
}

class _FriendSearchPageState extends State<FriendSearchPage> {
  TextEditingController _searchController = TextEditingController();
  List<String> followingList = [
    'friend1',
    'friend2',
    'friend3',
    // 여러 친구들의 목록을 가정하고 더 추가합니다.
  ];
  List<String> filteredFollowingList = [];

  void searchFriends(String query) {
    setState(() {
      // 검색어와 일치하는 친구들을 filteredFollowingList에 저장합니다.
      filteredFollowingList = followingList
          .where((friend) => friend.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('친구 찾기'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              onChanged: searchFriends,
              decoration: InputDecoration(
                labelText: '친구를 찾아보세요.',
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: filteredFollowingList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(filteredFollowingList[index]),
                    // 친구를 누르면 해당 친구의 프로필 등 상세 정보로 이동하는 기능을 추가할 수 있습니다.
                    onTap: () {
                      // 친구의 프로필 페이지로 이동하도록 구현
                    },
                  );
                },
              ),
            ),
            Container(color: Colors.red,child: Text('asdasd'),),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _searchController.clear(); // 텍스트 지우기
          searchFriends(''); // 검색 결과 초기화
        },
        child: Icon(Icons.clear),
      ),
    );
  }
}