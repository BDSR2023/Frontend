import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'follow.dart';
import 'profile_edit.dart';

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

  final List<String> photoList = ['assets/sea1.jpg', 'assets/sea2.jpg', 'assets/sea3.jpg'];
  final List<List<String>> videoList = [['assets/video1.mp4', 'assets/video2.mp4','assets/video3.mp4']];
  final List<String> tagList = [];

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black,size: 30,),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.house_outlined,color: Colors.black,size: 40,),
              onPressed: (){},)
          ],
        ),
      ),
      body: DefaultTabController(
        length: 3, // 탭의 개수를 3개로 설정
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
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
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => profile_edit()),
                        );
                      },
                      child: Container(
                          child: Text('프로필 편집',style: TextStyle(fontWeight: FontWeight.bold),)
                      ),
                    ),
                    Text(' '),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            // "게시물"을 클릭했을 때 처리
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FollowerScreen()),
                            );
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FollowerScreen(currentPageIndex: 1)),
                            );
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
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.black,
                    tabs: [
                      Tab(text: '이미지'),
                      Tab(text: '비디오'),
                      Tab(text: '태그'),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              // 이미지 탭
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) {
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
                itemCount: _allImages.length * 3,
              ),
              // 비디오 탭
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) {
                  int row = index ~/ 3;
                  int col = index % 3;
                  return InkWell(
                    onTap: () => _onImageTapped(index),
                    child: Container(
                      color: Colors.white,
                      margin: EdgeInsets.all(5),
                      child: VideoPlayerWidget(videoList[row][col]),
                    ),
                  );
                },
                itemCount: videoList.length * 3,
              ),
              // 태그 탭
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) {
                  int row = index ~/ 3;
                  int col = index % 3;
                  return InkWell(
                    onTap: () => _onImageTapped(index),
                    child: Container(
                      color: Colors.black,
                      margin: EdgeInsets.all(5),
                      child: VideoPlayerWidget(videoList[row][col]),
                    ),
                  );
                },
                itemCount: tagList.length * 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VideoPlayerWidget extends StatefulWidget {
  final String videoPath;

  VideoPlayerWidget(this.videoPath);

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _videoPlayerController;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset(widget.videoPath);
    _initializeVideoPlayerFuture = _videoPlayerController.initialize();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        color: Colors.black,
        child: FutureBuilder(
          future: _initializeVideoPlayerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return VideoPlayer(_videoPlayerController);
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}