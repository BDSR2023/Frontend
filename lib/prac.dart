import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class logCreation8 extends StatefulWidget {

  @override
  _logCreation8State createState() => _logCreation8State();
}

class _logCreation8State extends State<logCreation8> {
  TextEditingController _textFieldController = TextEditingController();
  List<String> _selectedFollowers = [];

  var follower = [
    "김윤재",
    "정서현",
    "심승우",
    "전준",
  ];

  void _onTextChanged(String text) {
    RegExp regex = RegExp(r'(^|\s)@');
    if (regex.hasMatch(text)) {
      String query = text.substring(text.lastIndexOf('@') + 1).toLowerCase();
      List<String> filteredFollowers = follower
          .where((follower) => follower.toLowerCase().contains(query))
          .toList();
      setState(() {
        _selectedFollowers = filteredFollowers;
      });
    } else {
      setState(() {
        _selectedFollowers.clear();
      });
    }
  }

  void _onFollowerSelected(String follower) {
    String currentText = _textFieldController.text;
    int atIndex = currentText.lastIndexOf("@");
    if (atIndex >= 0) {
      _textFieldController.text = currentText.replaceRange(atIndex, currentText.length, "@$follower ");
      // Show the follower list again when a follower is selected after "@" is pressed
      setState(() {
        _selectedFollowers.clear();
      });
    } else {
      _textFieldController.text = _textFieldController.text + "@$follower ";
      _selectedFollowers.add(follower);
    }
  }

  @override
  void dispose() {
    _textFieldController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _textFieldController.addListener(() {
      _onTextChanged(_textFieldController.text);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffECF3FD),
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
        child: Column(
          children: [
            Container(
              height: 50,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '다이빙 센터',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                      child: Row(
                        children: [
                          Flexible(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Color(0xffDAE8F8),
                              ),
                              height: 35,
                              child: TextField(
                                style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                  hintText: '입력 해주세요',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '버디',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                      child: Row(
                        children: [
                          Flexible(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Color(0xffDAE8F8),
                              ),
                              height: 35,
                              child: TextField(
                                style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                  hintText: '입력 해주세요',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '태그',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                          Container(
                            margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Color(0xffDAE8F8),
                              ),
                              height: 35, width: MediaQuery.of(context).size.width/1,
                              child: TextField(
                                controller: _textFieldController,
                                style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                  hintText: '입력 해주세요',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height/3,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 50,
                            child: Text(
                              '가이드',
                              style: TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                          Positioned(
                            top: 80,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(2),
                                          color: Color(0xffDAE8F8),
                                        ),
                                        height: 30, width: MediaQuery.of(context).size.width/2,
                                        child: TextField(
                                          decoration: InputDecoration(border: InputBorder.none),
                                          style: TextStyle(fontSize: 25),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                        height: 30,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(2),
                                          color: Color(0xff6FA9E5),
                                        ),
                                        child: Text(
                                          '강사',
                                          style: TextStyle(fontSize: 20, color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(2),
                                          color: Color(0xffDAE8F8),
                                        ),
                                        height: 30, width: MediaQuery.of(context).size.width/2,
                                        child: TextField(
                                          decoration: InputDecoration(border: InputBorder.none),
                                          style: TextStyle(fontSize: 25),
                                        ),
                                      ),
                                      Container(
                                        height: 30,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(2),
                                          color: Color(0xffC9DDF6),
                                        ),
                                        child: Text(
                                          '마스터',
                                          style: TextStyle(fontSize: 20, color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (_selectedFollowers.isNotEmpty)
                            Positioned(
                              top: 40,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                                width: MediaQuery.of(context).size.width/1, height: 150,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: _selectedFollowers
                                        .map((follower) => ListTile(
                                      onTap: () => _onFollowerSelected(follower),
                                      title: Text(follower),
                                    ))
                                        .toList(),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '서명',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff6FA9E5),
                          ),
                          height: 130,
                        ),
                        Text(
                          '스탬프',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              margin: EdgeInsets.fromLTRB(5, 0, 10, 0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Color(0xff6FA9E5),
                              ),
                              height: 40,
                              width: 130,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff6FA9E5),
                                ),
                                child: Text(
                                  'CLICK!',
                                  style: TextStyle(fontSize: 20, color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                                onPressed: () async {
                                  var picker = ImagePicker();
                                  var image = await picker.pickImage(source: ImageSource.gallery);
                                },
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '*최근에 찍은 스탬프 사진을',
                                  style: TextStyle(fontSize: 13, color: Colors.black),
                                ),
                                Text(
                                  '업로드 할 수 있어요.',
                                  style: TextStyle(fontSize: 13, color: Colors.black),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xffECF3FD),
        elevation: 0.0,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 0, 20),
                child: IconButton(
                  icon: Icon(Icons.chevron_left_rounded, size: 50,),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 40, 20),
                child: IconButton(
                  icon: Icon(Icons.navigate_next_rounded, size: 50),
                  onPressed: () {
                    // Next button action
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class prac extends StatelessWidget {
  const prac({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Color(0xffDAE8F8),
                ),
                height: 35, width: MediaQuery.of(context).size.width/1,
                child: TextField(
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    hintText: '입력 해주세요',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 50,
            child: Container(
              color: Colors.blue,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            top: 100,
            child: Column(
              children: [
                Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.yellow,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          ),
        ],
      )
      ,
    );
  }
}
