import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:logbook/homePage.dart';



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
                            print(await isKakaoTalkInstalled());
                            if (await isKakaoTalkInstalled()) {
                              try {
                                OAuthToken token = await UserApi.instance.loginWithKakaoTalk();
                                print('카카오톡으로 로그인 성공 ${token.accessToken}');
                                _get_user_info();
                              } catch (error) {
                                print('카카오톡으로 로그인 실패 $error');
                                // 카카오톡에 연결된 카카오계정이 없는 경우, 카카오계정으로 로그인
                                try {
                                  OAuthToken token = await UserApi.instance.loginWithKakaoAccount();
                                  print('카카오계정으로 로그인 성공 ${token.accessToken}');
                                  _get_user_info();
                                } catch (error) {
                                  print('카카오계정으로 로그인 실패 $error');
                                }
                              }
                            } else {
                              try {
                                OAuthToken token = await UserApi.instance.loginWithKakaoAccount();
                                print('카카오계정으로 로그인 성공 ${token.accessToken}');
                                _get_user_info();
                              } catch (error) {
                                print('카카오계정으로 로그인 실패 $error');
                              }
                            }
                            try {
                              AccessTokenInfo tokenInfo = await UserApi.instance.accessTokenInfo();
                              print('토큰 정보 보기 성공'
                                  '\n회원정보: ${tokenInfo.id}'
                                  '\n만료시간: ${tokenInfo.expiresIn} 초');
                            } catch (error) {
                              print('토큰 정보 보기 실패 $error');
                            }

                            //로그인 후, 홈페이지로 가기. (토큰을 받았다면)
                            //못 받았으면 돌아가기.
                            if (await AuthApi.instance.hasToken()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => homePage()),
                              );
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
