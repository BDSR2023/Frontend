import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class UserProfile {
  String name;
  String gender;
  String group;
  String tags;

  UserProfile({
    required this.name,
    required this.gender,
    required this.group,
    required this.tags,
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ProfileEditScreen(),
        debugShowCheckedModeBanner: false
    );
  }
}

class ProfileEditScreen extends StatefulWidget {
  @override
  _ProfileEditScreenState createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  late UserProfile _userProfile;

  @override
  void initState() {
    super.initState();
    _userProfile = UserProfile(
      name: '바다람사',
      gender: '여자',
      group: '바다사람',
      tags: '#부산대#스쿠버#태종대',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.grey, size: 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
              child: Text(
                '프로필 편집',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            )
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width / 1.8, 0, 0, 0),
              child: IconButton(
                icon: Icon(
                  Icons.edit,
                  color: Colors.grey,
                  size: 20,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfileInfoScreen(
                        userProfile: _userProfile,
                        onProfileUpdated: (updatedProfile) {
                          setState(() {
                            _userProfile = updatedProfile;
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            ), // 상단 여백 조정
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/윤재형.jpg'),
                  radius: 50,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: TextButton(
                onPressed: ()  async {
                  var picker = ImagePicker();
                  var image = await picker.pickImage(source: ImageSource.gallery);
                },
                child: Text(
                  '사진 수정',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width / 9,
                  MediaQuery.of(context).size.height / 7,
                  0,
                  0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          '사용자 이름',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(
                            0,
                            MediaQuery.of(context).size.width / 25,
                            0,
                            0),
                        child: Text(
                          '성별',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(
                            0,
                            MediaQuery.of(context).size.width / 25,
                            0,
                            0),
                        child: Text(
                          '소속 그룹',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(
                            0,
                            MediaQuery.of(context).size.width / 25,
                            0,
                            0),
                        child: Text(
                          '태그',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width / 8, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            _userProfile.name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.withOpacity(0.8)),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(
                              0,
                              MediaQuery.of(context).size.width / 25,
                              0,
                              0),
                          child: Text(
                            _userProfile.gender,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.withOpacity(0.8)),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(
                              0,
                              MediaQuery.of(context).size.width / 25,
                              0,
                              0),
                          child: Text(
                            _userProfile.group,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.withOpacity(0.8)),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(
                              0,
                              MediaQuery.of(context).size.width / 25,
                              0,
                              0),
                          child: Text(
                            _userProfile.tags,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.withOpacity(0.8)),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class EditProfileInfoScreen extends StatefulWidget {
  final UserProfile userProfile;
  final Function(UserProfile) onProfileUpdated;

  EditProfileInfoScreen({
    required this.userProfile,
    required this.onProfileUpdated,
  });

  @override
  _EditProfileInfoScreenState createState() => _EditProfileInfoScreenState();
}

class _EditProfileInfoScreenState extends State<EditProfileInfoScreen> {
  late TextEditingController _nameController;
  late String _selectedGender; // 추가된 부분
  late TextEditingController _groupController;
  late TextEditingController _tagsController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.userProfile.name);
    _selectedGender = widget.userProfile.gender; // 초기값 설정
    _groupController = TextEditingController(text: widget.userProfile.group);
    _tagsController = TextEditingController(text: widget.userProfile.tags);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 0, 70, 0),
                child: Text('프로필 정보 수정',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              )
          )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('사용자 이름'),
              TextFormField(
                controller: _nameController,
              ),
              Text(' '),
              Text('성별'),
              Row( // 버튼으로 성별 선택
                children: [
                  Radio<String>(
                    value: '남자',
                    groupValue: _selectedGender,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value!;
                      });
                    },
                  ),
                  Text('남자'),
                  Radio<String>(
                    value: '여자',
                    groupValue: _selectedGender,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value!;
                      });
                    },
                  ),
                  Text('여자'),
                ],
              ),
              Text(' '),
              Text('소속 그룹'),
              TextFormField(
                controller: _groupController,
              ),
              Text(' '),
              Text('태그'),
              TextFormField(
                controller: _tagsController,
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // 원하는 배경색으로 변경
                ),
                onPressed: () {
                  UserProfile updatedProfile = UserProfile(
                    name: _nameController.text,
                    gender: _selectedGender, // 수정된 성별
                    group: _groupController.text,
                    tags: _tagsController.text,
                  );
                  widget.onProfileUpdated(updatedProfile);
                  Navigator.pop(context);
                },
                child: Text('저장'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _groupController.dispose();
    _tagsController.dispose();
    super.dispose();
  }
}