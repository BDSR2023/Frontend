import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'HomePage.dart';
import 'logCreationBase.dart';


//토큰 유무에 따라 main()에서 이동되는 페이지를 달리해야할 것 같습니다.
//더좋은방법이 있다면 수정해도 좋을 것 같습니다.

//아래 위젯에 provider등을 감싸서 따로 변수를 저장해 둘 수 있습니다.
//토큰을 따로 저장해두는 패키지도 이용해야 할 것 같습니다.


void main() async {
  // 웹 환경에서 카카오 로그인을 정상적으로 완료하려면 runApp() 호출 전 아래 메서드 호출 필요
  WidgetsFlutterBinding.ensureInitialized();
  KakaoSdk.init(
    nativeAppKey: '609139b47c7c939fbf9ef4db2e6576ca',
    javaScriptAppKey: '4065d5a34fc35fc6d5f85fb693b440aa',
  );
  print(await AuthApi.instance.hasToken());

  //토큰유무에 따라 이동하는 페이지 다름.
  if(await AuthApi.instance.hasToken()) {
    runApp(ToHomePage()); //만약 토큰이 유효하다면,(api연결 필요.) homePage로 이동하는 위젯으로 이동.
  }
  else {
    runApp(const ToLoginPage()); //or(토큰이 유효하지 않거나, 없다면) loginPage로 이동하는 위젯으로 이동.
  }
}


//아래 위젯들의 ThemeData안의 설정들은 MaterialApp()안에서의 모든 설정을 디폴트값으로 설정합니다.
//또, 구조에 따라 아래 설정값들이 적용되지 않을경우 일일히 적용해 줘야 할것 같습니다. (logCreation1~8 에서의 DefaultTextStyle() 적용등.)

//loginPage이후, 계정 유무에 따라 회원가입 페이지로의 로직을 아직 구현하지 않았습니다. loginPage.dart에서 설정해주세요.

class ToLoginPage extends StatelessWidget {
  const ToLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(
              bodyText2: TextStyle(
                fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500 //폰트적용.
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
      home: logCreationsBase(),
    );
  }
}



