import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> tags = [];  // 사용자가 입력한 태그를 저장하는 리스트

  TextEditingController tagController = TextEditingController();  // 태그 입력을 받는 컨트롤러

  void addTag(String tag) {
    if (tag.trim().isNotEmpty) {
      setState(() {
        tags.add(tag);  // 입력한 태그를 리스트에 추가
      });
      tagController.clear();  // 태그 입력 필드를 지움
    }
  }

  void removeTag(String tag) {
    setState(() {
      tags.remove(tag);  // 선택한 태그를 리스트에서 제거
    });
  }

  @override
  void dispose() {
    tagController.dispose();  // 컨트롤러 해제
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // 첫 번째 Sliver - 상단 문구
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.fromLTRB(30, 70, 0, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '닉네임을',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    '설정해 주세요',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    '바다와 관련된 이름은 어떤가요?',
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                ],
              ),
            ),
          ),
          // 두 번째 Sliver - 닉네임 입력과 중복확인
          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  // 세 번째 Sliver - 닉네임 입력
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: TextField(
                            maxLength: 12,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: '닉네임을 입력하세요',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 10, 20, 20),
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            '중복확인',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  // 네 번째 Sliver - 이전 로그 수 입력
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Text('이전 로그 수'),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 200, 10),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: '로그 수를 입력하세요',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  // 다섯 번째 Sliver - 태그 입력
                  Container(
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text('태그')),
                        Container(
                          width: MediaQuery.of(context).size.width / 2.15,
                          height: 30,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: tags.length,
                            itemBuilder: (context, index) {
                              final tag = tags[index];
                              return Chip(
                                label: Text(tag),
                                onDeleted: () => removeTag(tag),
                                deleteIcon: Icon(Icons.close),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // 여섯 번째 Sliver - 태그 입력 필드
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: TextField(
                            controller: tagController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            if (tagController.text.trim().isNotEmpty) {
                              addTag(tagController.text);
                            }
                          },
                          child: Text(
                            '추가',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  // 일곱 번째 Sliver - 태그 사용 예시 설명
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text('태그는 다른사람이 나를 검색할때 사용됩니다.'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text('ex)단체명, 레밸, 동아리, 동호회, 소속센터'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.all(20),
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('가입하기'),
          ),
        ),
      ),
    );
  }
}
