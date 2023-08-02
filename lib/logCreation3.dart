import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'logCreationManager.dart';



class logCreation3 extends StatefulWidget {
  const logCreation3({Key? key}) : super(key: key);

  @override
  State<logCreation3> createState() => _logCreation3State();
}

class _logCreation3State extends State<logCreation3> {

  var buttonColor1 = [Color(0xffeaf2fc),Color(0xffeaf2fc),Color(0xffeaf2fc),Color(0xffeaf2fc),Color(0xffeaf2fc),
    Color(0xffeaf2fc),Color(0xffeaf2fc)];
  var buttonTextColor1 = [Color(0xff000000),Color(0xff000000),Color(0xff000000),Color(0xff000000),Color(0xff000000),
    Color(0xff000000),Color(0xff000000)];

  var buttonColor2 = [Color(0xffeaf2fc),Color(0xffeaf2fc),Color(0xffeaf2fc),Color(0xffeaf2fc)];
  var buttonTextColor2 = [Color(0xff000000),Color(0xff000000),Color(0xff000000),Color(0xff000000)];

  var selectedDivingUnit = [0,0,0,0,0,0,0];

  var selectedAir = [0,0,0,0];


  @override
  void initState() {
    super.initState();
    final logCreationManager = Provider.of<LogCreationManager>(context, listen: false);

    selectedDivingUnit = logCreationManager.selectedDivingUnit;
    selectedAir = logCreationManager.selectedAir;

    for (int i =0; i<7; i++) {
      if (selectedDivingUnit[i] == 1) {
        setState(() {
          buttonColor1[i] = Color(0xff65abea);
          buttonTextColor1[i] = Color(0xffffffff);
        });
      }
    }
    for (int i =0; i<4; i++) {
      if (selectedAir[i] == 1) {
        setState(() {
          buttonColor2[i] = Color(0xff65abea);
          buttonTextColor2[i] = Color(0xffffffff);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final logCreationManager = Provider.of<LogCreationManager>(context);

    return Scaffold(
      body: DefaultTextStyle(
        style: TextStyle(
            fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, color: Colors.black
        ),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width/13,
                ),
                Text('다이빙 유닛',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              ],
            ),
            SizedBox(
              height: 20, width: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if(selectedDivingUnit[0] == 0) {
                      for (int i=0; i<7; i++) {
                        selectedDivingUnit[i] = 0;
                        logCreationManager.updateSelectedDivingUnit(i, 0);
                      }
                      logCreationManager.updateSelectedDivingUnit(0, 1);
                      selectedDivingUnit[0] = 1;
                      setState(() {
                        for (int i=0; i<7; i++) {
                          buttonColor1[i] = Color(0xffeaf2fc);
                          buttonTextColor1[i] = Color(0xff000000);
                        }
                        buttonColor1[0] = Color(0xff65abea);
                        buttonTextColor1[0] = Color(0xffffffff);
                      });
                    } else {
                      logCreationManager.updateSelectedDivingUnit(0, 0);
                      selectedDivingUnit[0] = 0;
                      setState(() {
                        buttonColor1[0] = Color(0xffeaf2fc);
                        buttonTextColor1[0] = Color(0xff000000);
                      });
                    }
                  },
                  child: Text('싱글', style: TextStyle(
                      color: buttonTextColor1[0], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/4.5, 60), backgroundColor: buttonColor1[0], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/50,
                ),
                ElevatedButton(
                  onPressed: () {
                    if(selectedDivingUnit[1] == 0) {
                      for (int i=0; i<7; i++) {
                        selectedDivingUnit[i] = 0;
                        logCreationManager.updateSelectedDivingUnit(i, 0);
                      }
                      logCreationManager.updateSelectedDivingUnit(1, 1);
                      selectedDivingUnit[1] = 1;
                      setState(() {
                        for (int i=0; i<7; i++) {
                          buttonColor1[i] = Color(0xffeaf2fc);
                          buttonTextColor1[i] = Color(0xff000000);
                        }
                        buttonColor1[1] = Color(0xff65abea);
                        buttonTextColor1[1] = Color(0xffffffff);
                      });
                    } else {
                      logCreationManager.updateSelectedDivingUnit(1, 0);
                      selectedDivingUnit[1] = 0;
                      setState(() {
                        buttonColor1[1] = Color(0xffeaf2fc);
                        buttonTextColor1[1] = Color(0xff000000);
                      });
                    }
                  },
                  child: Text('더블', style: TextStyle(
                      color: buttonTextColor1[1], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/4.5, 60), backgroundColor: buttonColor1[1], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/50,
                ),
                ElevatedButton(
                  onPressed: () {
                    if(selectedDivingUnit[2] == 0) {
                      for (int i=0; i<7; i++) {
                        selectedDivingUnit[i] = 0;
                        logCreationManager.updateSelectedDivingUnit(i, 0);
                      }
                      logCreationManager.updateSelectedDivingUnit(2, 1);
                      selectedDivingUnit[2] = 1;
                      setState(() {
                        for (int i=0; i<7; i++) {
                          buttonColor1[i] = Color(0xffeaf2fc);
                          buttonTextColor1[i] = Color(0xff000000);
                        }
                        buttonColor1[2] = Color(0xff65abea);
                        buttonTextColor1[2] = Color(0xffffffff);
                      });
                    } else {
                      logCreationManager.updateSelectedDivingUnit(2, 0);
                      selectedDivingUnit[2] = 0;
                      setState(() {
                        buttonColor1[2] = Color(0xffeaf2fc);
                        buttonTextColor1[2] = Color(0xff000000);
                      });
                    }
                  },
                  child: Text('사이드 마운트', style: TextStyle(
                      color: buttonTextColor1[2], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/3.5, 60), backgroundColor: buttonColor1[2], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/13.5,
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if(selectedDivingUnit[3] == 0) {
                      for (int i=0; i<7; i++) {
                        selectedDivingUnit[i] = 0;
                        logCreationManager.updateSelectedDivingUnit(i, 0);
                      }
                      logCreationManager.updateSelectedDivingUnit(3, 1);
                      selectedDivingUnit[3] = 1;
                      setState(() {
                        for (int i=0; i<7; i++) {
                          buttonColor1[i] = Color(0xffeaf2fc);
                          buttonTextColor1[i] = Color(0xff000000);
                        }
                        buttonColor1[3] = Color(0xff65abea);
                        buttonTextColor1[3] = Color(0xffffffff);
                      });
                    } else {
                      logCreationManager.updateSelectedDivingUnit(3, 0);
                      selectedDivingUnit[3] = 0;
                      setState(() {
                        buttonColor1[3] = Color(0xffeaf2fc);
                        buttonTextColor1[3] = Color(0xff000000);
                      });
                    }
                  },
                  child: Text('리브리더', style: TextStyle(
                      color: buttonTextColor1[3], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/4, 60), backgroundColor: buttonColor1[3], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/50,
                ),
                ElevatedButton(
                  onPressed: () {
                    if(selectedDivingUnit[4] == 0) {
                      for (int i=0; i<7; i++) {
                        selectedDivingUnit[i] = 0;
                        logCreationManager.updateSelectedDivingUnit(i, 0);
                      }
                      logCreationManager.updateSelectedDivingUnit(4, 1);
                      selectedDivingUnit[4] = 1;
                      setState(() {
                        for (int i=0; i<7; i++) {
                          buttonColor1[i] = Color(0xffeaf2fc);
                          buttonTextColor1[i] = Color(0xff000000);
                        }
                        buttonColor1[4] = Color(0xff65abea);
                        buttonTextColor1[4] = Color(0xffffffff);
                      });
                    } else {
                      logCreationManager.updateSelectedDivingUnit(4, 0);
                      selectedDivingUnit[4] = 0;
                      setState(() {
                        buttonColor1[4] = Color(0xffeaf2fc);
                        buttonTextColor1[4] = Color(0xff000000);
                      });
                    }
                  },
                  child: Text('기타', style: TextStyle(
                      color: buttonTextColor1[4], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/4.5, 60), backgroundColor: buttonColor1[4], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/2.85,
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if(selectedDivingUnit[5] == 0) {
                      for (int i=0; i<7; i++) {
                        selectedDivingUnit[i] = 0;
                        logCreationManager.updateSelectedDivingUnit(i, 0);
                      }
                      logCreationManager.updateSelectedDivingUnit(5, 1);
                      selectedDivingUnit[5] = 1;
                      setState(() {
                        for (int i=0; i<7; i++) {
                          buttonColor1[i] = Color(0xffeaf2fc);
                          buttonTextColor1[i] = Color(0xff000000);
                        }
                        buttonColor1[5] = Color(0xff65abea);
                        buttonTextColor1[5] = Color(0xffffffff);
                      });
                    } else {
                      logCreationManager.updateSelectedDivingUnit(5, 0);
                      selectedDivingUnit[5] = 0;
                      setState(() {
                        buttonColor1[5] = Color(0xffeaf2fc);
                        buttonTextColor1[5] = Color(0xff000000);
                      });
                    }
                  },
                  child: Text('스테이지', style: TextStyle(
                      color: buttonTextColor1[5], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/4, 60), backgroundColor: buttonColor1[5], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/50,
                ),
                ElevatedButton(
                  onPressed: () {
                    if(selectedDivingUnit[6] == 0) {
                      for (int i=0; i<7; i++) {
                        selectedDivingUnit[i] = 0;
                        logCreationManager.updateSelectedDivingUnit(i, 0);
                      }
                      logCreationManager.updateSelectedDivingUnit(6, 1);
                      selectedDivingUnit[6] = 1;
                      setState(() {
                        for (int i=0; i<7; i++) {
                          buttonColor1[i] = Color(0xffeaf2fc);
                          buttonTextColor1[i] = Color(0xff000000);
                        }
                        buttonColor1[6] = Color(0xff65abea);
                        buttonTextColor1[6] = Color(0xffffffff);
                      });
                    } else {
                      logCreationManager.updateSelectedDivingUnit(6, 0);
                      selectedDivingUnit[6] = 0;
                      setState(() {
                        buttonColor1[6] = Color(0xffeaf2fc);
                        buttonTextColor1[6] = Color(0xff000000);
                      });
                    }
                  },
                  child: Text('데코', style: TextStyle(
                      color: buttonTextColor1[6], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/4.5, 60), backgroundColor: buttonColor1[6], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/2.85,
                ),
              ],
            ),
            SizedBox(
              height: 80, width: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width/13,
                ),
                Text('기체',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)
              ],
            ),
            SizedBox(
              height: 20, width: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if(selectedAir[0] == 0) {
                      for (int i=0; i<4; i++) {
                        logCreationManager.updateSelectedDivingUnit(i, 0);
                        selectedAir[i] = 0;
                      }
                      logCreationManager.updateSelectedDivingUnit(0, 1);
                      selectedAir[0] = 1;
                      setState(() {
                        for (int i=0; i<4; i++) {
                          buttonColor2[i] = Color(0xffeaf2fc);
                          buttonTextColor2[i] = Color(0xff000000);
                        }
                        buttonColor2[0] = Color(0xff65abea);
                        buttonTextColor2[0] = Color(0xffffffff);
                      });
                    } else {
                      logCreationManager.updateSelectedDivingUnit(0, 0);
                      selectedAir[0] = 0;
                      setState(() {
                        buttonColor2[0] = Color(0xffeaf2fc);
                        buttonTextColor2[0] = Color(0xff000000);
                      });
                    }
                  },
                  child: Text('에어', style: TextStyle(
                      color: buttonTextColor2[0], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/4.5, 60), backgroundColor: buttonColor2[0], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/50,
                ),
                ElevatedButton(
                  onPressed: () {
                    if(selectedAir[1] == 0) {
                      for (int i=0; i<4; i++) {
                        logCreationManager.updateSelectedDivingUnit(i, 0);
                        selectedAir[i] = 0;
                      }
                      logCreationManager.updateSelectedDivingUnit(1, 1);
                      selectedAir[1] = 1;
                      setState(() {
                        for (int i=0; i<4; i++) {
                          buttonColor2[i] = Color(0xffeaf2fc);
                          buttonTextColor2[i] = Color(0xff000000);
                        }
                        buttonColor2[1] = Color(0xff65abea);
                        buttonTextColor2[1] = Color(0xffffffff);
                      });
                    } else {
                      logCreationManager.updateSelectedDivingUnit(1, 0);
                      selectedAir[1] = 0;
                      setState(() {
                        buttonColor2[1] = Color(0xffeaf2fc);
                        buttonTextColor2[1] = Color(0xff000000);
                      });
                    }
                  },
                  child: Text('나이트록스', style: TextStyle(
                      color: buttonTextColor2[1], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/4, 60), backgroundColor: buttonColor2[1], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/50,
                ),
                ElevatedButton(
                  onPressed: () {
                    if(selectedAir[2] == 0) {
                      for (int i=0; i<4; i++) {
                        logCreationManager.updateSelectedDivingUnit(i, 0);
                        selectedAir[i] = 0;
                      }
                      logCreationManager.updateSelectedDivingUnit(2, 1);
                      selectedAir[2] = 1;
                      setState(() {
                        for (int i=0; i<4; i++) {
                          buttonColor2[i] = Color(0xffeaf2fc);
                          buttonTextColor2[i] = Color(0xff000000);
                        }
                        buttonColor2[2] = Color(0xff65abea);
                        buttonTextColor2[2] = Color(0xffffffff);
                      });
                    } else {
                      logCreationManager.updateSelectedDivingUnit(2, 0);
                      selectedAir[2] = 0;
                      setState(() {
                        buttonColor2[2] = Color(0xffeaf2fc);
                        buttonTextColor2[2] = Color(0xff000000);
                      });
                    }
                  },
                  child: Text('트라이믹스', style: TextStyle(
                      color: buttonTextColor2[2], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/4, 60), backgroundColor: buttonColor2[2], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/12.5,
                ),
              ],
            ),
            SizedBox(
              height: 20, width: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if(selectedAir[3] == 0) {
                      for (int i=0; i<4; i++) {
                        logCreationManager.updateSelectedDivingUnit(i, 0);
                        selectedAir[i] = 0;
                      }
                      logCreationManager.updateSelectedDivingUnit(3, 1);
                      selectedAir[3] = 1;
                      setState(() {
                        for (int i=0; i<4; i++) {
                          buttonColor2[i] = Color(0xffeaf2fc);
                          buttonTextColor2[i] = Color(0xff000000);
                        }
                        buttonColor2[3] = Color(0xff65abea);
                        buttonTextColor2[3] = Color(0xffffffff);
                      });
                    } else {
                      logCreationManager.updateSelectedDivingUnit(3, 0);
                      selectedAir[3] = 0;
                      setState(() {
                        buttonColor2[3] = Color(0xffeaf2fc);
                        buttonTextColor2[3] = Color(0xff000000);
                      });
                    }
                  },
                  child: Text('기타', style: TextStyle(
                      color: buttonTextColor2[3], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/4.5, 60), backgroundColor: buttonColor2[3], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/1.615,
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}
