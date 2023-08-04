import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'logCreationManager.dart';



class logCreation2 extends StatefulWidget {
  const logCreation2({Key? key}) : super(key: key);

  @override
  State<logCreation2> createState() => _logCreation2State();
}

class _logCreation2State extends State<logCreation2> {


  var divingForm=['보트','비치','DPR','섬','리브어보드','고도','난파선','아이스','드라이슈트',
    '케이브','케빈','조류','교육','야간','동영상','사진','대심도','기타'];

  var buttonColor = [Color(0xffeaf2fc),Color(0xffeaf2fc),Color(0xffeaf2fc),Color(0xffeaf2fc),Color(0xffeaf2fc),
    Color(0xffeaf2fc),Color(0xffeaf2fc),Color(0xffeaf2fc),Color(0xffeaf2fc),Color(0xffeaf2fc),
    Color(0xffeaf2fc),Color(0xffeaf2fc),Color(0xffeaf2fc),Color(0xffeaf2fc),Color(0xffeaf2fc),
    Color(0xffeaf2fc),Color(0xffeaf2fc),Color(0xffeaf2fc),];

  var buttonTextColor = [Color(0xff000000),Color(0xff000000),Color(0xff000000),Color(0xff000000),Color(0xff000000),
    Color(0xff000000),Color(0xff000000),Color(0xff000000),Color(0xff000000),Color(0xff000000),
    Color(0xff000000),Color(0xff000000),Color(0xff000000),Color(0xff000000),Color(0xff000000),
    Color(0xff000000),Color(0xff000000),Color(0xff000000),];

  List<int> selectedDivingForms = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//보트,비치,DPR

  @override
  void initState() {
    super.initState();
    final logCreationManager = Provider.of<LogCreationManager>(context, listen: false);

    selectedDivingForms = logCreationManager.selectedDivingForms;

    for (int i =0; i<18; i++) {
      if (selectedDivingForms[i] == 1) {
        setState(() {
          buttonColor[i] = Color(0xff65abea);
          buttonTextColor[i] = Color(0xffffffff);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final logCreationManager = Provider.of<LogCreationManager>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTextStyle(
        style: TextStyle(
            fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, color: Colors.black
        ),
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width/13,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('다이빙 종류', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                        Text('중복 선택이 가능합니다.',style: TextStyle(fontSize: 15),),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 25,),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if(selectedDivingForms[0] == 0) {
                            logCreationManager.updateSelectedDivingForms(0, 1);
                            selectedDivingForms[0] = 1;
                            setState(() {
                              buttonColor[0] = Color(0xff65abea);
                              buttonTextColor[0] = Color(0xffffffff);
                            });
                          } else {
                            logCreationManager.updateSelectedDivingForms(0, 0);
                            selectedDivingForms[0] = 0;
                            setState(() {
                              buttonColor[0] = Color(0xffeaf2fc);
                              buttonTextColor[0] = Color(0xff000000);
                            });
                          }
                        },
                        child: Text(divingForm[0], style: TextStyle(
                          color: buttonTextColor[0], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                        ),),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(MediaQuery.of(context).size.width/4, 70), backgroundColor: buttonColor[0], shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if(selectedDivingForms[1] == 0) {
                            logCreationManager.updateSelectedDivingForms(1, 1);
                            selectedDivingForms[1] = 1;
                            setState(() {
                              buttonColor[1] = Color(0xff65abea);
                              buttonTextColor[1] = Color(0xffffffff);
                            });
                          } else {
                            logCreationManager.updateSelectedDivingForms(1, 0);
                            selectedDivingForms[1] = 0;
                            setState(() {
                              buttonColor[1] = Color(0xffeaf2fc);
                              buttonTextColor[1] = Color(0xff000000);
                            });
                          }
                        },
                        child: Text(divingForm[1], style: TextStyle(
                            color: buttonTextColor[1], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                        ),),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(MediaQuery.of(context).size.width/4, 70), backgroundColor: buttonColor[1], shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if(selectedDivingForms[2] == 0) {
                            logCreationManager.updateSelectedDivingForms(2, 1);
                            selectedDivingForms[2] = 1;
                            setState(() {
                              buttonColor[2] = Color(0xff65abea);
                              buttonTextColor[2] = Color(0xffffffff);
                            });
                          } else {
                            logCreationManager.updateSelectedDivingForms(2, 0);
                            selectedDivingForms[2] = 0;
                            setState(() {
                              buttonColor[2] = Color(0xffeaf2fc);
                              buttonTextColor[2] = Color(0xff000000);
                            });
                          }
                        },
                        child: Text(divingForm[2], style: TextStyle(
                            color: buttonTextColor[2], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                        ),),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(MediaQuery.of(context).size.width/4, 70), backgroundColor: buttonColor[2], shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed:  () {
                          if(selectedDivingForms[3] == 0) {
                            logCreationManager.updateSelectedDivingForms(3, 1);
                            selectedDivingForms[3] = 1;
                            setState(() {
                              buttonColor[3] = Color(0xff65abea);
                              buttonTextColor[3] = Color(0xffffffff);
                            });
                          } else {
                            logCreationManager.updateSelectedDivingForms(3, 0);
                            selectedDivingForms[3] = 0;
                            setState(() {
                              buttonColor[3] = Color(0xffeaf2fc);
                              buttonTextColor[3] = Color(0xff000000);
                            });
                          }
                        },
                        child: Text(divingForm[3], style: TextStyle(
                            color: buttonTextColor[3], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                        ),),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(MediaQuery.of(context).size.width/4, 70), backgroundColor: buttonColor[3], shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if(selectedDivingForms[4] == 0) {
                            logCreationManager.updateSelectedDivingForms(4, 1);
                            selectedDivingForms[4] = 1;
                            setState(() {
                              buttonColor[4] = Color(0xff65abea);
                              buttonTextColor[4] = Color(0xffffffff);
                            });
                          } else {
                            logCreationManager.updateSelectedDivingForms(4, 0);
                            selectedDivingForms[4] = 0;
                            setState(() {
                              buttonColor[4] = Color(0xffeaf2fc);
                              buttonTextColor[4] = Color(0xff000000);
                            });
                          }
                        },
                        child: Text(divingForm[4], style: TextStyle(
                            color: buttonTextColor[4], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                        ),),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(MediaQuery.of(context).size.width/4, 70), backgroundColor: buttonColor[4], shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if(selectedDivingForms[5] == 0) {
                            logCreationManager.updateSelectedDivingForms(5, 1);
                            selectedDivingForms[5] = 1;
                            setState(() {
                              buttonColor[5] = Color(0xff65abea);
                              buttonTextColor[5] = Color(0xffffffff);
                            });
                          } else {
                            logCreationManager.updateSelectedDivingForms(5, 0);
                            selectedDivingForms[5] = 0;
                            setState(() {
                              buttonColor[5] = Color(0xffeaf2fc);
                              buttonTextColor[5] = Color(0xff000000);
                            });
                          }
                        },
                        child: Text(divingForm[5], style: TextStyle(
                            color: buttonTextColor[5], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                        ),),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(MediaQuery.of(context).size.width/4, 70), backgroundColor: buttonColor[5], shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if(selectedDivingForms[6] == 0) {
                            logCreationManager.updateSelectedDivingForms(6, 1);
                            selectedDivingForms[6] = 1;
                            setState(() {
                              buttonColor[6] = Color(0xff65abea);
                              buttonTextColor[6] = Color(0xffffffff);
                            });
                          } else {
                            logCreationManager.updateSelectedDivingForms(6, 0);
                            selectedDivingForms[6] = 0;
                            setState(() {
                              buttonColor[6] = Color(0xffeaf2fc);
                              buttonTextColor[6] = Color(0xff000000);
                            });
                          }
                        },
                        child: Text(divingForm[6], style: TextStyle(
                            color: buttonTextColor[6], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                        ),),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(MediaQuery.of(context).size.width/4, 70), backgroundColor: buttonColor[6], shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if(selectedDivingForms[7] == 0) {
                            logCreationManager.updateSelectedDivingForms(7, 1);
                            selectedDivingForms[7] = 1;
                            setState(() {
                              buttonColor[7] = Color(0xff65abea);
                              buttonTextColor[7] = Color(0xffffffff);
                            });
                          } else {
                            logCreationManager.updateSelectedDivingForms(7, 0);
                            selectedDivingForms[7] = 0;
                            setState(() {
                              buttonColor[7] = Color(0xffeaf2fc);
                              buttonTextColor[7] = Color(0xff000000);
                            });
                          }
                        },
                        child: Text(divingForm[7], style: TextStyle(
                            color: buttonTextColor[7], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                        ),),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(MediaQuery.of(context).size.width/4, 70), backgroundColor: buttonColor[7], shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if(selectedDivingForms[8] == 0) {
                            logCreationManager.updateSelectedDivingForms(8, 1);
                            selectedDivingForms[8] = 1;
                            setState(() {
                              buttonColor[8] = Color(0xff65abea);
                              buttonTextColor[8] = Color(0xffffffff);
                            });
                          } else {
                            logCreationManager.updateSelectedDivingForms(8, 0);
                            selectedDivingForms[8] = 0;
                            setState(() {
                              buttonColor[8] = Color(0xffeaf2fc);
                              buttonTextColor[8] = Color(0xff000000);
                            });
                          }
                        },
                        child: Text(divingForm[8], style: TextStyle(
                            color: buttonTextColor[8], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                        ),),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(MediaQuery.of(context).size.width/4, 70), backgroundColor: buttonColor[8], shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if(selectedDivingForms[9] == 0) {
                            logCreationManager.updateSelectedDivingForms(9, 1);
                            selectedDivingForms[9] = 1;
                            setState(() {
                              buttonColor[9] = Color(0xff65abea);
                              buttonTextColor[9] = Color(0xffffffff);
                            });
                          } else {
                            logCreationManager.updateSelectedDivingForms(9, 0);
                            selectedDivingForms[9] = 0;
                            setState(() {
                              buttonColor[9] = Color(0xffeaf2fc);
                              buttonTextColor[9] = Color(0xff000000);
                            });
                          }
                        },
                        child: Text(divingForm[9], style: TextStyle(
                            color: buttonTextColor[9], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                        ),),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(MediaQuery.of(context).size.width/4, 70), backgroundColor: buttonColor[9], shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if(selectedDivingForms[10] == 0) {
                            logCreationManager.updateSelectedDivingForms(10, 1);
                            selectedDivingForms[10] = 1;
                            setState(() {
                              buttonColor[10] = Color(0xff65abea);
                              buttonTextColor[10] = Color(0xffffffff);
                            });
                          } else {
                            logCreationManager.updateSelectedDivingForms(10, 0);
                            selectedDivingForms[10] = 0;
                            setState(() {
                              buttonColor[10] = Color(0xffeaf2fc);
                              buttonTextColor[10] = Color(0xff000000);
                            });
                          }
                        },
                        child: Text(divingForm[10], style: TextStyle(
                            color: buttonTextColor[10], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                        ),),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(MediaQuery.of(context).size.width/4, 70), backgroundColor: buttonColor[10], shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if(selectedDivingForms[11] == 0) {
                            logCreationManager.updateSelectedDivingForms(11, 1);
                            selectedDivingForms[11] = 1;
                            setState(() {
                              buttonColor[11] = Color(0xff65abea);
                              buttonTextColor[11] = Color(0xffffffff);
                            });
                          } else {
                            logCreationManager.updateSelectedDivingForms(11, 0);
                            selectedDivingForms[11] = 0;
                            setState(() {
                              buttonColor[11] = Color(0xffeaf2fc);
                              buttonTextColor[11] = Color(0xff000000);
                            });
                          }
                        },
                        child: Text(divingForm[11], style: TextStyle(
                            color: buttonTextColor[11], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                        ),),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(MediaQuery.of(context).size.width/4, 70), backgroundColor: buttonColor[11], shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if(selectedDivingForms[12] == 0) {
                            logCreationManager.updateSelectedDivingForms(12, 1);
                            selectedDivingForms[12] = 1;
                            setState(() {
                              buttonColor[12] = Color(0xff65abea);
                              buttonTextColor[12] = Color(0xffffffff);
                            });
                          } else {
                            logCreationManager.updateSelectedDivingForms(12, 0);
                            selectedDivingForms[12] = 0;
                            setState(() {
                              buttonColor[12] = Color(0xffeaf2fc);
                              buttonTextColor[12] = Color(0xff000000);
                            });
                          }
                        },
                        child: Text(divingForm[12], style: TextStyle(
                            color: buttonTextColor[12], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                        ),),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(MediaQuery.of(context).size.width/4, 70), backgroundColor: buttonColor[12], shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if(selectedDivingForms[13] == 0) {
                            logCreationManager.updateSelectedDivingForms(13, 1);
                            selectedDivingForms[13] = 1;
                            setState(() {
                              buttonColor[13] = Color(0xff65abea);
                              buttonTextColor[13] = Color(0xffffffff);
                            });
                          } else {
                            logCreationManager.updateSelectedDivingForms(13, 0);
                            selectedDivingForms[13] = 0;
                            setState(() {
                              buttonColor[13] = Color(0xffeaf2fc);
                              buttonTextColor[13] = Color(0xff000000);
                            });
                          }
                        },
                        child: Text(divingForm[13], style: TextStyle(
                            color: buttonTextColor[13], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                        ),),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(MediaQuery.of(context).size.width/4, 70), backgroundColor: buttonColor[13], shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if(selectedDivingForms[14] == 0) {
                            logCreationManager.updateSelectedDivingForms(14, 1);
                            selectedDivingForms[14] = 1;
                            setState(() {
                              buttonColor[14] = Color(0xff65abea);
                              buttonTextColor[14] = Color(0xffffffff);
                            });
                          } else {
                            logCreationManager.updateSelectedDivingForms(14, 0);
                            selectedDivingForms[14] = 0;
                            setState(() {
                              buttonColor[14] = Color(0xffeaf2fc);
                              buttonTextColor[14] = Color(0xff000000);
                            });
                          }
                        },
                        child: Text(divingForm[14], style: TextStyle(
                            color: buttonTextColor[14], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                        ),),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(MediaQuery.of(context).size.width/4, 70), backgroundColor: buttonColor[14], shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if(selectedDivingForms[15] == 0) {
                            logCreationManager.updateSelectedDivingForms(15, 1);
                            selectedDivingForms[15] = 1;
                            setState(() {
                              buttonColor[15] = Color(0xff65abea);
                              buttonTextColor[15] = Color(0xffffffff);
                            });
                          } else {
                            logCreationManager.updateSelectedDivingForms(15, 0);
                            selectedDivingForms[15] = 0;
                            setState(() {
                              buttonColor[15] = Color(0xffeaf2fc);
                              buttonTextColor[15] = Color(0xff000000);
                            });
                          }
                        },
                        child: Text(divingForm[15], style: TextStyle(
                            color: buttonTextColor[15], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                        ),),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(MediaQuery.of(context).size.width/4, 70), backgroundColor: buttonColor[15], shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if(selectedDivingForms[16] == 0) {
                            logCreationManager.updateSelectedDivingForms(16, 1);
                            selectedDivingForms[16] = 1;
                            setState(() {
                              buttonColor[16] = Color(0xff65abea);
                              buttonTextColor[16] = Color(0xffffffff);
                            });
                          } else {
                            logCreationManager.updateSelectedDivingForms(16, 0);
                            selectedDivingForms[16] = 0;
                            setState(() {
                              buttonColor[16] = Color(0xffeaf2fc);
                              buttonTextColor[16] = Color(0xff000000);
                            });
                          }
                        },
                        child: Text(divingForm[16], style: TextStyle(
                            color: buttonTextColor[16], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                        ),),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(MediaQuery.of(context).size.width/4, 70), backgroundColor: buttonColor[16], shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if(selectedDivingForms[17] == 0) {
                            logCreationManager.updateSelectedDivingForms(17, 1);
                            selectedDivingForms[17] = 1;
                            setState(() {
                              buttonColor[17] = Color(0xff65abea);
                              buttonTextColor[17] = Color(0xffffffff);
                            });
                          } else {
                            logCreationManager.updateSelectedDivingForms(17, 0);
                            selectedDivingForms[17] = 0;
                            setState(() {
                              buttonColor[17] = Color(0xffeaf2fc);
                              buttonTextColor[17] = Color(0xff000000);
                            });
                          }
                        },
                        child: Text(divingForm[17], style: TextStyle(
                            color: buttonTextColor[17], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                        ),),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(MediaQuery.of(context).size.width/4, 70), backgroundColor: buttonColor[17], shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
      ),
    );
  }
}
