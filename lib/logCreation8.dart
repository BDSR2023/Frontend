import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'logCreation9.dart';

class logCreation8 extends StatelessWidget {
  const logCreation8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffECF3FD),
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
        child: Column(
          children: [
            Container(
              height: 50,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('다이빙 센터',style: TextStyle(color: Colors.black, fontSize: 20),),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                    child: Row(
                      children: [
                        Flexible(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Color(0xffDAE8F8),
                            ),
                            height: 35,
                            child: TextField(style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                hintText: '입력 해주세요',border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('버디',style: TextStyle(color: Colors.black, fontSize: 20),),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                    child: Row(
                      children: [
                        Flexible(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Color(0xffDAE8F8),
                            ),
                            height: 35,
                            child: TextField(style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                hintText: '입력 해주세요',border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('가이드',style: TextStyle(color: Colors.black, fontSize: 20),),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xffDAE8F8),
                                ),
                                height: 30,
                                child: TextField(
                                  decoration: InputDecoration(border: InputBorder.none,),
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                              height: 30, width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Color(0xff6FA9E5),
                              ),
                              child: Text('강사', style: TextStyle(fontSize: 20, color: Colors.white), textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xffDAE8F8),
                                ),
                                height: 30,
                                child: TextField(
                                  decoration: InputDecoration(border: InputBorder.none,),
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                            ),
                            Container(
                              height: 30, width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Color(0xffC9DDF6),
                              ),
                              child: Text('마스터', style: TextStyle(fontSize: 20, color: Colors.white,),textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('서명',style: TextStyle(color: Colors.black, fontSize: 20),),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff6FA9E5),
                  ),
                  height: 130,
                ),
                Text('스탬프',style: TextStyle(color: Colors.black, fontSize: 20),),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0), margin: EdgeInsets.fromLTRB(5, 0, 10, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Color(0xff6FA9E5),
                      ),
                      height: 40, width: 130,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff6FA9E5)
                        ),
                        child: Text('CLICK!', style: TextStyle(fontSize: 20, color: Colors.white,),textAlign: TextAlign.center,),
                          onPressed: () async {
                            var picker = ImagePicker();
                            var image = await picker.pickImage(source: ImageSource.gallery);
                          }
                      ),
                      //Text('CLICK!', style: TextStyle(fontSize: 20, color: Colors.white,),textAlign: TextAlign.center,),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('*최근에 찍은 스탬프 사진을', style: TextStyle(fontSize: 13, color: Colors.black,)),
                        Text('업로드 할 수 있어요.', style: TextStyle(fontSize: 13, color: Colors.black,)),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Color(0xffECF3FD), elevation: 0.0,
          child: Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 0, 20),
                      child: IconButton(
                        icon: Icon(Icons.chevron_left_rounded,size: 50,),
                        onPressed: (){Navigator.pop(context); },
                      )
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 40, 20),
                    child: IconButton(
                      icon: Icon(Icons.navigate_next_rounded, size: 50),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => logCreation9()),
                        );
                      },
                    ),
                  ),
                ],
              )
          )
      ),
    );
  }
}
