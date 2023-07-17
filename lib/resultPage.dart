import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page Flip Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PageController _pageController;
  int _currentPage = 0;
  List<String> _contentList = [
    '내용 1',
    '내용 2',
    '내용 3',
    '내용 4',
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0.0,
        title: Text('날짜'),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
        children: [
          for (var content in _contentList)
            Container(
              color: Colors.lightBlueAccent,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0), // 내용 컨테이너의 테두리를 둥글게 만듦
                  ),
                  child: ListView.builder(
                    itemCount: 19,
                    itemBuilder: (context, index) {
                      IconData iconData = Icons.circle;
                      String text = '';

                      switch (index) {
                        case 0:
                          text = 'n번째 로그북';
                          break;
                        case 1:
                          iconData = Icons.date_range;
                          text = '다이빙 날짜:';
                          break;
                        case 2:
                          iconData = Icons.location_on;
                          text = '지역/포인트:';
                          break;
                        case 3:
                          iconData = Icons.wb_sunny;
                          text = '날씨:';
                          break;
                        case 4:
                          iconData = Icons.scuba_diving;
                          text = '다이빙 종류:';
                          break;
                        case 5:
                          iconData = Icons.scuba_diving_sharp;
                          text = '다이빙 유닛:';
                          break;
                        case 6:
                          iconData = Icons.airline_seat_recline_normal;
                          text = '기체:';
                          break;
                        case 7:
                          iconData = Icons.local_gas_station;
                          text = '탱크/탱크용량:';
                          break;
                        case 8:
                          iconData = Icons.accessibility_new;
                          text = '슈트:';
                          break;
                        case 9:
                          iconData = Icons.line_weight;
                          text = '웨이트:';
                          break;
                        case 10:
                          iconData = Icons.water;
                          text = '워터타입:';
                          break;
                        case 11:
                          iconData = Icons.waves;
                          text = '조류 파도 써지:';
                          break;
                        case 12:
                          iconData = Icons.thermostat;
                          text = '수온:';
                          break;
                        case 13:
                          iconData = Icons.visibility;
                          text = '시야:';
                          break;
                        case 14:
                          iconData = Icons.timer;
                          text = '입수시간~출수시간:';
                          break;
                        case 15:
                          iconData = Icons.linear_scale;
                          text = '시작압력 ~ 종료압력:';
                          break;
                        case 16:
                          iconData = Icons.trending_up;
                          text = '평균수심:  ,  최대수심:';
                          break;
                        case 17:
                          iconData = Icons.warning;
                          text = '안전정지:  ,  감압정지:';
                          break;
                        case 18:
                          iconData = Icons.location_city;
                          text = '다이빙센터:';
                          break;
                        case 19:
                          iconData = Icons.people;
                          text = '버디:';
                          break;
                      }

                      return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              iconData,
                              color: _currentPage % 2 == 0 ? Colors.blue : Colors.red, // 각 페이지마다 아이콘 색상 변경
                            ),
                            SizedBox(width: 8.0),
                            Text(
                              '$text $content',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}