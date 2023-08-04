import 'package:flutter/material.dart';

class accountInformationPage extends StatelessWidget {
  const accountInformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          SizedBox(height: MediaQuery.of(context).size.height/15,),
          Container(
            padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.height/15, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('회원탈퇴', style: TextStyle(
                  fontSize: 18, fontFamily: 'GmarketSansTTF',
                  color: Colors.black,),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/30,),
                Text('차단', style: TextStyle(
                  fontSize: 18, fontFamily: 'GmarketSansTTF',
                  color: Colors.black,),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/15,),
                Text('계정/정보 관리', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26,
                  color: Color(0xff666666),)),
                SizedBox(height: MediaQuery.of(context).size.height/15,),
                Text('성별', style: TextStyle(
                  fontSize: 18, fontFamily: 'GmarketSansTTF',
                  color: Colors.black,),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/15,),
                Text('소속그룹', style: TextStyle(
                  fontSize: 18, fontFamily: 'GmarketSansTTF',
                  color: Colors.black,),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
