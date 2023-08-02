import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

import 'HomePage.dart';
import 'loginPage.dart';
import 'prac.dart';



void main() async {
  // 웹 환경에서 카카오 로그인을 정상적으로 완료하려면 runApp() 호출 전 아래 메서드 호출 필요
  WidgetsFlutterBinding.ensureInitialized();
  KakaoSdk.init(
    nativeAppKey: '609139b47c7c939fbf9ef4db2e6576ca',
    javaScriptAppKey: '4065d5a34fc35fc6d5f85fb693b440aa',
  );
  print(await AuthApi.instance.hasToken());
  if(await AuthApi.instance.hasToken()) {
    runApp(ToHomePage());
  }
  else {
    runApp(const ToLoginPage());
  }
}

class ToLoginPage extends StatelessWidget {
  const ToLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(
              bodyText2: TextStyle(
                fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500
              )
          )
      ),
      home: homePage(),
    );
  }
}

class ToHomePage extends StatelessWidget {
  const ToHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
            bodyText2: TextStyle(
              fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500
            )
        ),
      ),
      home: homePage(),
    );
  }
}



