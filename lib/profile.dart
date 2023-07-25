import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Profile(),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String _selectedItem = '야간 다이빙';
  List<String> night_diving = ["야간 다이빙"];

  final List<List<AssetImage>> _allImages = [
    [AssetImage("assets/sea1.jpg"), AssetImage("assets/sea2.jpg"), AssetImage("assets/sea3.jpg")],
    [AssetImage("assets/sea4.jpg"), AssetImage("assets/sea5.jpg"), AssetImage("assets/sea6.jpg")],
    [AssetImage("assets/sea7.jpg"), AssetImage("assets/sea8.jpg"), AssetImage("assets/sea9.jpg")],
    [AssetImage("assets/sea10.jpg"), AssetImage("assets/sea11.jpg"), AssetImage("assets/sea12.jpg")],
  ];

  void _onImageTapped(int index) {
    int row = index ~/ 3;
    int col = index % 3;
    AssetImage selectedImage = _allImages[row][col];

    print('이미지 $index가 클릭되었습니다!');
    print('선택한 이미지: $selectedImage');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Icon(Icons.account_circle, size: 100),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '@바다람사',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        // Handle the onTap event for "게시물"
                        print('게시물이 클릭되었습니다!');
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              '22',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('게시물'),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Handle the onTap event for "팔로워"
                        print('팔로워가 클릭되었습니다!');
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              '94',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('팔로워'),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Handle the onTap event for "팔로잉"
                        print('팔로잉이 클릭되었습니다!');
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              '42',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('팔로잉'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(height: 50, width: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DropdownButton(
                      value: _selectedItem,
                      items: night_diving.map((String item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          _selectedItem = value!;
                          if (_selectedItem != night_diving[0]) {
                            night_diving.remove(value);
                            night_diving.insert(1, value);
                          }
                        });
                      },
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text(
                        '조회',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                int row = index ~/ 3;
                int col = index % 3;
                return InkWell(
                  onTap: () => _onImageTapped(index),
                  child: Container(
                    color: Colors.white,
                    margin: EdgeInsets.all(5),
                    child: Image(
                      image: _allImages[row][col],
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              childCount: _allImages.length * 3,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
