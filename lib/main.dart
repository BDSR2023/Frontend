import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

void main() {
  // 웹 환경에서 카카오 로그인을 정상적으로 완료하려면 runApp() 호출 전 아래 메서드 호출 필요
  WidgetsFlutterBinding.ensureInitialized();
  KakaoSdk.init(
    nativeAppKey: '609139b47c7c939fbf9ef4db2e6576ca',
    javaScriptAppKey: '4065d5a34fc35fc6d5f85fb693b440aa',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);





  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(
              bodyText2: TextStyle(
                fontSize: 30,
                color: Colors.white,
              )
          )
      ),
      home: LoginPage(),
    );
  }
}

