import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:logbook/homePage.dart';
import 'package:http/http.dart' as http;


//카카오톡 로그인 버튼의 이미지를 다시 설정해줘야 할 것 같습니다.
//회원가입페이지 연결 로직 구현이 필요합니다.
//아래 fetchData()가 있기는 한데 참고만 해주세요..
//var token에 token값을 넣어야 합니다.

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  var token;

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

  Future<http.Response> fetchData() async {
    final url = Uri.parse('https://example.com/api/data'); // 실제 요청을 보낼 URL로 변경해야 합니다.

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        // 요청이 성공하면 response.body로 데이터를 얻을 수 있습니다.
        print('Response data: ${response.body}');
      } else {
        // 요청이 실패한 경우 오류 처리
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      print('Error during GET request: $e');
    }
    return await http.get(url);
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

                            /*if (await fetchData() == 200) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => signup()),
                              );
                            } else */ print('to homePage');
                            if (await AuthApi.instance.hasToken()) { //만약에 토큰이 유효하면 homePage()로 이동. 여기서 로그인 api를 써야할 것 같습니다.
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
