import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  void _get_user_info() async {
    try {
      User user = await UserApi.instance.me();
      print('사용자 정보 요청 성공'
          '\n회원번호: ${user.id}'
          '\n닉네임: ${user.kakaoAccount?.profile?.nickname}');
    } catch (error) {
      print('사용자 정보 요청 실패 $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCCDEF4),
      body: Container(
        margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
        child: Column(
          children: [
            Flexible(
              flex: 3,
              child: Container(
              ),
            ),
            SizedBox(
              child: Row(
                children: [
                  Text('스쿠버 다이빙,\n기록에서 추억까지\n하나의플랫폼', style: TextStyle(
                      fontSize: 35, color: Colors.black, height: 1.1
                  ),),
                  Flexible(
                    child: Container(
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              flex: 7,
              child: Container(
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  Text('SNS 계정으로 간편 가입하기', style: TextStyle(
                      fontSize: 15, color: Colors.black,
                  ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(child: Text('카카오 로그인'),
                          onPressed: () async {
                            if (await isKakaoTalkInstalled()) {
                              try {
                                await UserApi.instance.loginWithKakaoTalk();
                                print('카카오톡으로 로그인 성공');
                                _get_user_info();
                              } catch (error) {
                                print('카카오톡으로 로그인 실패 $error');
                                // 카카오톡에 연결된 카카오계정이 없는 경우, 카카오계정으로 로그인
                                try {
                                  await UserApi.instance.loginWithKakaoAccount();
                                  print('카카오계정으로 로그인 성공');
                                  _get_user_info();
                                } catch (error) {
                                  print('카카오계정으로 로그인 실패 $error');
                                }
                              }
                            } else {
                              try {
                                await UserApi.instance.loginWithKakaoAccount();
                                print('카카오계정으로 로그인 성공');
                                _get_user_info();
                              } catch (error) {
                                print('카카오계정으로 로그인 실패 $error');
                              }
                            }
                          }
                      )
                    ],
                  )
                ],
              ),
            ),
            Flexible(
              flex: 6,
              child: Container(
              ),
            ),
          ],
        ),
      ),
    );
  }
}
