import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'follow.dart'; // 팔로우 모듈 임포트
import 'profile_edit.dart';

void main() {
  runApp(MyApp()); // 앱 실행
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Profile(), // 앱의 홈 화면을 Profile 위젯으로 설정
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String _selectedItem = '야간 다이빙'; // 초기 선택 아이템 설정
  List<String> night_diving = ["야간 다이빙"]; // 야간 다이빙 항목 초기화

  final List<List<AssetImage>> _allImages = [
    [AssetImage("assets/sea1.jpg"), AssetImage("assets/sea2.jpg"), AssetImage("assets/sea3.jpg")],
    [AssetImage("assets/sea4.jpg"), AssetImage("assets/sea5.jpg"), AssetImage("assets/sea6.jpg")],
    [AssetImage("assets/sea7.jpg"), AssetImage("assets/sea8.jpg"), AssetImage("assets/sea9.jpg")],
    [AssetImage("assets/sea10.jpg"), AssetImage("assets/sea11.jpg"), AssetImage("assets/sea12.jpg")],
    // 이미지 그리드에 사용할 AssetImage 객체의 중첩 리스트
    // _allImages[rowIndex][colIndex]로 이미지에 접근 가능
  ];

  final List<String> photoList = ['assets/sea1.jpg', 'assets/sea2.jpg', 'assets/sea3.jpg']; // 사진 경로 리스트
  final List<List<String>> videoList = [['assets/video1.mp4', 'assets/video2.mp4','assets/video3.mp4']]; // 동영상 경로의 중첩 리스트
  final List<String> tagList = []; // 태그 리스트

  void _onImageTapped(int index) {
    // 이미지 탭 이벤트 처리 함수
    int row = index ~/ 3; // 이미지가 있는 행 인덱스 계산
    int col = index % 3; // 이미지가 있는 열 인덱스 계산
    AssetImage selectedImage = _allImages[row][col]; // 선택된 이미지 가져오기

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
              icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black, size: 30,),
              onPressed: () {}, // 뒤로가기 버튼 처리 (미구현)
            ),
            IconButton(
              icon: Icon(Icons.house_outlined, color: Colors.black, size: 40,),
              onPressed: () {}, // 홈 버튼 처리 (미구현)
            ),
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
                    Icon(Icons.account_circle, size: 100), // 프로필 아이콘
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
                          MaterialPageRoute(builder: (context) => profile_edit()), // 프로필 편집 페이지로 이동
                        );
                      },
                      child: Container(
                          child: Text('프로필 편집', style: TextStyle(fontWeight: FontWeight.bold),)
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
                              MaterialPageRoute(builder: (context) => FollowerScreen()), // 팔로워 목록 페이지로 이동
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
                              MaterialPageRoute(builder: (context) => FollowerScreen(currentPageIndex: 1)), // 팔로잉 목록 페이지로 이동
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
                    Container(height: 50, width: 50), // 간격 조절용 빈 컨테이너
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
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black, // 선택된 탭의 글자 색상
                    unselectedLabelColor: Colors.grey, // 선택되지 않은 탭의 글자 색상
                    indicatorColor: Colors.black, // 선택된 탭 하단의 인디케이터 색상
                    tabs: [
                      Tab(text: '이미지'), // 첫 번째 탭
                      Tab(text: '비디오'), // 두 번째 탭
                      Tab(text: '태그'),   // 세 번째 탭
                    ],
                  ),
                ),
                pinned: true, // SliverPersistentHeader 고정 설정
              ),
            ];
          },
          body: TabBarView(
            children: [
              // 이미지 탭 뷰
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 각 행에 보여줄 항목 수 설정
                ),
                itemBuilder: (context, index) {
                  int row = index ~/ 3; // 이미지가 있는 행 인덱스 계산
                  int col = index % 3; // 이미지가 있는 열 인덱스 계산
                  return InkWell(
                    onTap: () => _onImageTapped(index), // 이미지 탭 처리 함수 호출
                    child: Container(
                      color: Colors.white,
                      margin: EdgeInsets.all(5), // 간격 설정
                      child: Image(
                        image: _allImages[row][col], // 이미지 가져오기
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover, // 이미지 맞춤 설정
                      ),
                    ),
                  );
                },
                itemCount: _allImages.length * 3, // 총 이미지 항목 수 설정
              ),
              // 비디오 탭 뷰
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 각 행에 보여줄 항목 수 설정
                ),
                itemBuilder: (context, index) {
                  int row = index ~/ 3; // 비디오가 있는 행 인덱스 계산
                  int col = index % 3; // 비디오가 있는 열 인덱스 계산
                  return InkWell(
                    onTap: () => _onImageTapped(index), // 비디오 탭 처리 함수 호출
                    child: Container(
                      color: Colors.white,
                      margin: EdgeInsets.all(5), // 간격 설정
                      child: VideoPlayerWidget(videoList[row][col]), // 비디오 플레이어 위젯 사용
                    ),
                  );
                },
                itemCount: videoList.length * 3, // 총 비디오 항목 수 설정
              ),
              // 태그 탭 뷰
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 각 행에 보여줄 항목 수 설정
                ),
                itemBuilder: (context, index) {
                  int row = index ~/ 3; // 태그가 있는 행 인덱스 계산
                  int col = index % 3; // 태그가 있는 열 인덱스 계산
                  return InkWell(
                    onTap: () => _onImageTapped(index), // 태그 탭 처리 함수 호출
                    child: Container(
                      color: Colors.black,
                      margin: EdgeInsets.all(5), // 간격 설정
                      child: Image.asset(
                        tagList[index], // 태그 이미지 가져오기 (코드 수정 필요)
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover, // 이미지 맞춤 설정
                      ),
                    ),
                  );
                },
                itemCount: tagList.length * 3, // 총 태그 항목 수 설정
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
    _videoPlayerController = VideoPlayerController.asset(widget.videoPath); // 비디오 컨트롤러 초기화
    _initializeVideoPlayerFuture = _videoPlayerController.initialize(); // 비디오 초기화 작업
  }

  @override
  void dispose() {
    _videoPlayerController.dispose(); // 비디오 컨트롤러 해제
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9, // 비디오 플레이어의 가로 대비 세로 비율 설정
      child: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // 비디오 초기화 완료 시
            return VideoPlayer(_videoPlayerController); // 비디오 플레이어 생성
          } else {
            // 아직 초기화 중이거나 에러 발생 시
            return Center(
              child: CircularProgressIndicator(), // 로딩 스피너 표시
            );
          }
        },
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;

  _SliverAppBarDelegate(this._tabBar);

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white, // 배경색상 설정
      child: _tabBar, // 주어진 TabBar 표시
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
