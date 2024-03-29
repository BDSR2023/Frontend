import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

// 사용자 프로필 정보를 저장하는 클래스
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
      home: profile_edit(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class profile_edit extends StatefulWidget {
  @override
  _profile_editState createState() => _profile_editState();
}

class _profile_editState extends State<profile_edit> {
  late UserProfile _userProfile;

  @override
  void initState() {
    super.initState();
    // 초기 사용자 프로필 생성
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
            // 뒤로 가기 버튼을 누를 때 동작
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
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // "프로필 수정" 아이콘 버튼
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
                  // 프로필 수정 화면으로 이동
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfileInfoScreen(
                        userProfile: _userProfile,
                        // 수정된 프로필을 받아 업데이트
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
                // 사용자 프로필 이미지
                CircleAvatar(
                  backgroundImage: AssetImage('assets/윤재형.jpg'),
                  radius: 50,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: TextButton(
                onPressed: () async {
                  // 갤러리에서 사진 선택
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
  final UserProfile userProfile; // 수정 전 사용자 프로필 정보
  final Function(UserProfile) onProfileUpdated; // 프로필 업데이트 콜백 함수

  EditProfileInfoScreen({
    required this.userProfile, // 생성자로 사용자 프로필 정보 받음
    required this.onProfileUpdated, // 업데이트 콜백 함수 받음
  });

  @override
  _EditProfileInfoScreenState createState() => _EditProfileInfoScreenState();
}

class _EditProfileInfoScreenState extends State<EditProfileInfoScreen> {
  late TextEditingController _nameController; // 이름 입력 컨트롤러
  late String _selectedGender; // 선택된 성별
  late TextEditingController _groupController; // 그룹 입력 컨트롤러
  late TextEditingController _tagsController; // 태그 입력 컨트롤러

  @override
  void initState() {
    super.initState();
    // 수정 전 프로필 정보를 컨트롤러와 변수에 할당
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
              // "사용자 이름" 입력란
              Text('사용자 이름'),
              TextFormField(
                controller: _nameController,
              ),
              Text(' '),
              // "성별" 선택 라디오 버튼
              Text('성별'),
              Row(
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
              // "소속 그룹" 입력란
              Text('소속 그룹'),
              TextFormField(
                controller: _groupController,
              ),
              Text(' '),
              // "태그" 입력란
              Text('태그'),
              TextFormField(
                controller: _tagsController,
              ),
              SizedBox(height: 16.0),
              // "저장" 버튼
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // 원하는 배경색으로 변경
                ),
                onPressed: () {
                  // 수정된 프로필 정보로 업데이트 후 화면 닫기
                  UserProfile updatedProfile = UserProfile(
                    name: _nameController.text,
                    gender: _selectedGender, // 수정된 성별
                    group: _groupController.text,
                    tags: _tagsController.text,
                  );
                  widget.onProfileUpdated(updatedProfile); // 업데이트 콜백 호출
                  Navigator.pop(context); // 화면 닫기
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
    // 컨트롤러들 해제
    _nameController.dispose();
    _groupController.dispose();
    _tagsController.dispose();
    super.dispose();
  }
}
