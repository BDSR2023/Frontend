import 'package:flutter/material.dart';
import 'accountInformationPage.dart';


//Stack()으로 기본적인 틀정도는 만들어 뒀습니다.
//나중에 배경으로 사진적용 필요합니다.
//각각의 글자들은 GestureDetector()로 클릭되게 했습니다.

class optionPage extends StatelessWidget {
  const optionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe8f0fa),
      body: Stack(
        children: [
          Container(
            color: Color(0xffe8f0fa),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: IconButton(
                    onPressed: () { Navigator.pop(context); },
                    color: Color(0xff666666),
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                    icon: Icon(Icons.arrow_back_ios_rounded,size: 40,)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Icon(Icons.settings, size: 35,color: Color(0xff666666),),
              )
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height/7, left: -10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text('설정', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32,
                  color: Color(0xff666666),),),
                  margin: EdgeInsets.fromLTRB(45, 0, 0, 20),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/1.4, width: MediaQuery.of(context).size.width/1.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.white,
                    border: Border.all(width: 0.5, color: Colors.grey)
                  ),
                  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/12, 30, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('BDSR LOG', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32,
                        color: Color(0xff666666),)),
                      SizedBox(),
                      Container(
                        padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/18, 0, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: MediaQuery.of(context).size.height/18,),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => accountInformationPage()),
                                );
                              },
                              child: Text(
                                '계정/정보',
                                style: TextStyle(
                                  fontSize: 18, fontFamily: 'GmarketSansTTF',
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height/25,),
                            GestureDetector(
                              onTap: () {

                              },
                              child: Text(
                                '국가',
                                style: TextStyle(
                                  fontSize: 18, fontFamily: 'GmarketSansTTF',
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height/25,),
                            GestureDetector(
                              onTap: () {

                              },
                              child: Text(
                                '회원탈퇴',
                                style: TextStyle(
                                  fontSize: 18, fontFamily: 'GmarketSansTTF',
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height/25,),
                            GestureDetector(
                              onTap: () {

                              },
                              child: Text(
                                '만든이는 누구',
                                style: TextStyle(
                                  fontSize: 18, fontFamily: 'GmarketSansTTF',
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
