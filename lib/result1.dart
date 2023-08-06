import 'package:flutter/material.dart';
import 'result_frame.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Result1(),
    );
  }
}

class Result1 extends StatefulWidget {
  const Result1({Key? key}) : super(key: key);

  @override
  State<Result1> createState() => _Result1State();
}

class _Result1State extends State<Result1> {
  String _selectedlog_date = '로그 기록을 찾아보세요';

  List<String> log_date = [
    "로그 기록을 찾아보세요",
    "2022.08.15 / 제주도 보트다이빙",
    "2023.03.20 / 울릉도 보트다이빙",
    "2023.06.14 / 시밀란 리브어보드",
  ];

  List<Color> containerColors = [
    Colors.blue,
    Colors.green,
    Colors.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(40, 30, 0, 0),
                    child: Text(
                      "'바다람사' 님의 로그북",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: Text(
                      '  바닷속 추억들을 떠올려 보아요',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(100, 10, 0, 0),
                child: IconButton(onPressed: () {}, icon: Icon(Icons.add_circle_rounded)),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
            width: MediaQuery.of(context).size.width,
            child: DropdownButton(
              value: _selectedlog_date,
              items: log_date.map((String item) {
                return DropdownMenuItem(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? value,) {
                setState(() {
                  _selectedlog_date = value!;
                  if (_selectedlog_date != log_date[0]) {
                    log_date.remove(value);
                    log_date.insert(1, value);
                  }
                });
              },
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => result_frame(),
                      ),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3.8,
                    height: MediaQuery.of(context).size.height / 4,
                    color: Colors.lightBlueAccent,
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 3.8 / 10,
                            height: MediaQuery.of(context).size.height / 4,
                            color: Colors.blue,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                          child: Text(
                                            '80TH',
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                          child: Text('SOUTH \nKOREA\n제주도'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text('     22.08.15'),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // 버튼 2가 클릭되었을 때 수행할 동작
                    print('Button 2 Clicked!');
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3.8,
                    height: MediaQuery.of(context).size.height / 4,
                    color: Colors.lightGreenAccent,
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 3.8 / 10,
                            height: MediaQuery.of(context).size.height / 4,
                            color: Colors.green,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                          child: Text(
                                            '81TH',
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                          child: Text('THLAND\n시밀란'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text('     22.03.20'),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // 버튼 3이 클릭되었을 때 수행할 동작
                    print('Button 3 Clicked!');
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3.8,
                    height: MediaQuery.of(context).size.height / 4,
                    color: Colors.yellowAccent,
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 3.8 / 10,
                            height: MediaQuery.of(context).size.height / 4,
                            color: Colors.yellow,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                          child: Text(
                                            '82TH',
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                          child: Text('SOUTH \nKOREA\n울릉도'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text('     22.06.14'),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(''),
          Center(
            child: Text(
              '지나간 로그북 기록',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: log_date.length,
              itemBuilder: (context, index) {
                if (index == 0) return Container();
                return InkWell(
                  onTap: () {
                    if (log_date[index].contains("제주도")) {
                      _selectedlog_date = log_date[index];
                      _onDropdownChanged(log_date[index]);
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => result_frame(),
                          ),
                        );
                      });
                    }
                  },
                  child: ListTile(
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          log_date[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(),
                      ],
                    ),
                    leading: Container(
                      width: MediaQuery.of(context).size.width / 30,
                      height: MediaQuery.of(context).size.height / 4,
                      color: containerColors[index - 1],
                    ),
                    title: Text("${index + 80}TH", style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _onDropdownChanged(String value) {
    setState(() {
      _selectedlog_date = value;
    });
  }
}
