import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'logCreationManager.dart';



class logCreation4 extends StatefulWidget {
  const logCreation4({Key? key}) : super(key: key);

  @override
  State<logCreation4> createState() => _logCreation4State();
}

class _logCreation4State extends State<logCreation4> {

  final belt = ['0','1','2','3','4','5','6','7','8','9','10','11','12','13','14'];
  final pocket=['0','1','2','3','4','5','6','7','8','9','10','11','12','13','14'];
  var selectedBelt = '0';
  var selectedPocket = '0';

  var buttonColor1 = [Color(0xffeaf2fc),Color(0xffeaf2fc)];
  var buttonTextColor1 = [Color(0xff000000),Color(0xff000000)];

  var buttonColor2 = [Color(0xffeaf2fc),Color(0xffeaf2fc)];
  var buttonTextColor2 = [Color(0xff000000),Color(0xff000000)];

  var buttonColor3 = [Color(0xffeaf2fc),Color(0xffeaf2fc),Color(0xffeaf2fc),Color(0xffeaf2fc),Color(0xffeaf2fc),
    Color(0xffeaf2fc)];
  var buttonTextColor3 = [Color(0xff000000),Color(0xff000000),Color(0xff000000),Color(0xff000000),Color(0xff000000),
    Color(0xff000000)];

  var buttonColor4 = [Color(0xffeaf2fc),Color(0xffeaf2fc)];
  var buttonTextColor4 = [Color(0xff000000),Color(0xff000000)];

  var buttonColor5 = [Color(0xffeaf2fc),Color(0xffeaf2fc)];
  var buttonTextColor5 = [Color(0xff000000),Color(0xff000000)];

  var selectedTank = [0,0]; //알루미늄, 스틸
  var selectedTankSize = [0,0]; //80큐빅, 63큐빅
  var selectedSuit = [0,0,0,0,0,0]; //웻, 드라이, 부츠, 베스트, 장갑, 후드
  var selectedWeight = [0,0]; //벹트, 포켓
  var selectedWaterType = [0,0]; //해수, 담수


  @override
  void initState() {
    super.initState();
    final logCreationManager = Provider.of<LogCreationManager>(context, listen: false);

    selectedBelt = logCreationManager.selectedBelt;
    selectedPocket = logCreationManager.selectedPocket;

    selectedTank = logCreationManager.selectedTank;
    selectedTankSize = logCreationManager.selectedTankSize;
    selectedSuit = logCreationManager.selectedSuit;
    selectedWeight = logCreationManager.selectedWeight;
    selectedWaterType = logCreationManager.selectedWaterType;

    for (int i =0; i<2; i++) {
      if (selectedTank[i] == 1) {
        setState(() {
          buttonColor1[i] = Color(0xff65abea);
          buttonTextColor1[i] = Color(0xffffffff);
        });
      }
    }
    for (int i =0; i<2; i++) {
      if (selectedTankSize[i] == 1) {
        setState(() {
          buttonColor2[i] = Color(0xff65abea);
          buttonTextColor2[i] = Color(0xffffffff);
        });
      }
    }
    for (int i =0; i<6; i++) {
      if (selectedSuit[i] == 1) {
        setState(() {
          buttonColor3[i] = Color(0xff65abea);
          buttonTextColor3[i] = Color(0xffffffff);
        });
      }
    }
    for (int i =0; i<2; i++) {
      if (selectedWeight[i] == 1) {
        setState(() {
          buttonColor4[i] = Color(0xff65abea);
          buttonTextColor4[i] = Color(0xffffffff);
        });
      }
    }
    for (int i =0; i<2; i++) {
      if (selectedWaterType[i] == 1) {
        setState(() {
          buttonColor5[i] = Color(0xff65abea);
          buttonTextColor5[i] = Color(0xffffffff);
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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width/13,
                ),
                Text('탱크', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)
              ],
            ),
            Text(""),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  if(selectedTank[0] == 0) {
                    logCreationManager.updateSelectedTank(1, 0);
                    logCreationManager.updateSelectedTank(0, 1);
                    selectedTank[1] = 0;
                    selectedTank[0] = 1;
                    setState(() {
                      buttonColor1[1] = Color(0xffeaf2fc);
                      buttonTextColor1[1] = Color(0xff000000);
                      buttonColor1[0] = Color(0xff65abea);
                      buttonTextColor1[0] = Color(0xffffffff);
                    });
                  } else {
                    logCreationManager.updateSelectedTank(0, 0);
                    selectedTank[0] = 0;
                    setState(() {
                      buttonColor1[0] = Color(0xffeaf2fc);
                      buttonTextColor1[0] = Color(0xff000000);
                    });
                  }
                },
                    child: Text('알루미늄', style: TextStyle(
                        color: buttonTextColor1[0], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                    ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/2.4, 40), backgroundColor: buttonColor1[0], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/50,
                ),
                ElevatedButton(onPressed: () {
                  if(selectedTank[1] == 0) {
                    logCreationManager.updateSelectedTank(0, 0);
                    logCreationManager.updateSelectedTank(1, 1);
                    selectedTank[0] = 0;
                    selectedTank[1] = 1;
                    setState(() {
                      buttonColor1[0] = Color(0xffeaf2fc);
                      buttonTextColor1[0] = Color(0xff000000);
                      buttonColor1[1] = Color(0xff65abea);
                      buttonTextColor1[1] = Color(0xffffffff);
                    });
                  } else {
                    logCreationManager.updateSelectedTank(1, 0);
                    selectedTank[1] = 0;
                    setState(() {
                      buttonColor1[1] = Color(0xffeaf2fc);
                      buttonTextColor1[1] = Color(0xff000000);
                    });
                  }
                },
                    child: Text('스틸', style: TextStyle(
                        color: buttonTextColor1[1], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                    ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/2.4, 40), backgroundColor: buttonColor1[1], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width/13,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child:Text('탱크 용량', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                )
              ],
            ),
            Text(' '),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  if(selectedTankSize[0] == 0) {
                    logCreationManager.updateSelectedTankSize(1, 0);
                    logCreationManager.updateSelectedTankSize(0, 1);
                    selectedTankSize[1] = 0;
                    selectedTankSize[0] = 1;
                    setState(() {
                      buttonColor2[1] = Color(0xffeaf2fc);
                      buttonTextColor2[1] = Color(0xff000000);
                      buttonColor2[0] = Color(0xff65abea);
                      buttonTextColor2[0] = Color(0xffffffff);
                    });
                  } else {
                    logCreationManager.updateSelectedTankSize(0, 0);
                    selectedTankSize[0] = 0;
                    setState(() {
                      buttonColor2[0] = Color(0xffeaf2fc);
                      buttonTextColor2[0] = Color(0xff000000);
                    });
                  }
                },
                  child: Text('80 큐빅', style: TextStyle(
                      color: buttonTextColor2[0], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/2.4, 40), backgroundColor: buttonColor2[0], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/50,
                ),
                ElevatedButton(onPressed: () {
                  if(selectedTankSize[1] == 0) {
                    logCreationManager.updateSelectedTankSize(0, 0);
                    logCreationManager.updateSelectedTankSize(1, 1);
                    selectedTankSize[0] = 0;
                    selectedTankSize[1] = 1;
                    setState(() {
                      buttonColor2[0] = Color(0xffeaf2fc);
                      buttonTextColor2[0] = Color(0xff000000);
                      buttonColor2[1] = Color(0xff65abea);
                      buttonTextColor2[1] = Color(0xffffffff);
                    });
                  } else {
                    logCreationManager.updateSelectedTankSize(1, 0);
                    selectedTankSize[1] = 0;
                    setState(() {
                      buttonColor2[1] = Color(0xffeaf2fc);
                      buttonTextColor2[1] = Color(0xff000000);
                    });
                  }
                },
                  child: Text('63 큐빅', style: TextStyle(
                      color: buttonTextColor2[1], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/2.4, 40), backgroundColor: buttonColor2[1], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width/13,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child:Text('슈트',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                )
              ],
            ),
            Text(""),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  if(selectedSuit[0] == 0) {
                    logCreationManager.updateSelectedSuit(1, 0);
                    logCreationManager.updateSelectedSuit(0, 1);
                    selectedSuit[1] = 0;
                    selectedSuit[0] = 1;
                    setState(() {
                      buttonColor3[1] = Color(0xffeaf2fc);
                      buttonTextColor3[1] = Color(0xff000000);
                      buttonColor3[0] = Color(0xff65abea);
                      buttonTextColor3[0] = Color(0xffffffff);
                    });
                  } else {
                    logCreationManager.updateSelectedSuit(0, 0);
                    selectedSuit[0] = 0;
                    setState(() {
                      buttonColor3[0] = Color(0xffeaf2fc);
                      buttonTextColor3[0] = Color(0xff000000);
                    });
                  }
                },
                  child: Text('웻(WET)', style: TextStyle(
                      color: buttonTextColor3[0], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/2.4, 40), backgroundColor: buttonColor3[0], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/50,
                ),
                ElevatedButton(onPressed: () {
                  if(selectedSuit[1] == 0) {
                    logCreationManager.updateSelectedSuit(0, 0);
                    logCreationManager.updateSelectedSuit(1, 1);
                    selectedSuit[0] = 0;
                    selectedSuit[1] = 1;
                    setState(() {
                      buttonColor3[0] = Color(0xffeaf2fc);
                      buttonTextColor3[0] = Color(0xff000000);
                      buttonColor3[1] = Color(0xff65abea);
                      buttonTextColor3[1] = Color(0xffffffff);
                    });
                  } else {
                    logCreationManager.updateSelectedSuit(1, 0);
                    selectedSuit[1] = 0;
                    setState(() {
                      buttonColor3[1] = Color(0xffeaf2fc);
                      buttonTextColor3[1] = Color(0xff000000);
                    });
                  }
                },
                  child: Text('드라이(DRY)', style: TextStyle(
                      color: buttonTextColor3[1], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/2.4, 40), backgroundColor: buttonColor3[1], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                )
              ],
            ),
            Text(''),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  if(selectedSuit[2] == 0) {
                    logCreationManager.updateSelectedSuit(2, 1);
                    selectedSuit[2] = 1;
                    setState(() {
                      buttonColor3[2] = Color(0xff65abea);
                      buttonTextColor3[2] = Color(0xffffffff);
                    });
                  } else {
                    logCreationManager.updateSelectedSuit(2, 0);
                    selectedSuit[2] = 0;
                    setState(() {
                      buttonColor3[2] = Color(0xffeaf2fc);
                      buttonTextColor3[2] = Color(0xff000000);
                    });
                  }
                },
                child: Text('부츠', style: TextStyle(
                    color: buttonTextColor3[2], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/5, 40), backgroundColor: buttonColor3[2], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/58,
                ),
                ElevatedButton(onPressed: () {
                  if(selectedSuit[3] == 0) {
                    logCreationManager.updateSelectedSuit(3, 1);
                    selectedSuit[3] = 1;
                    setState(() {
                      buttonColor3[3] = Color(0xff65abea);
                      buttonTextColor3[3] = Color(0xffffffff);
                    });
                  } else {
                    logCreationManager.updateSelectedSuit(3, 0);
                    selectedSuit[3] = 0;
                    setState(() {
                      buttonColor3[3] = Color(0xffeaf2fc);
                      buttonTextColor3[3] = Color(0xff000000);
                    });
                  }
                },
                  child: Text('베스트', style: TextStyle(
                      color: buttonTextColor3[3], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/5, 40), backgroundColor: buttonColor3[3], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/50,
                ),
                ElevatedButton(onPressed: () {
                  if(selectedSuit[4] == 0) {
                    logCreationManager.updateSelectedSuit(4, 1);
                    selectedSuit[4] = 1;
                    setState(() {
                      buttonColor3[4] = Color(0xff65abea);
                      buttonTextColor3[4] = Color(0xffffffff);
                    });
                  } else {
                    logCreationManager.updateSelectedSuit(4, 0);
                    selectedSuit[4] = 0;
                    setState(() {
                      buttonColor3[4] = Color(0xffeaf2fc);
                      buttonTextColor3[4] = Color(0xff000000);
                    });
                  }
                },
                  child: Text('장갑', style: TextStyle(
                      color: buttonTextColor3[4], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/5, 40), backgroundColor: buttonColor3[4], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/58,
                ),
                ElevatedButton(onPressed: () {
                  if(selectedSuit[5] == 0) {
                    logCreationManager.updateSelectedSuit(5, 1);
                    selectedSuit[5] = 1;
                    setState(() {
                      buttonColor3[5] = Color(0xff65abea);
                      buttonTextColor3[5] = Color(0xffffffff);
                    });
                  } else {
                    logCreationManager.updateSelectedSuit(5, 0);
                    selectedSuit[5] = 0;
                    setState(() {
                      buttonColor3[5] = Color(0xffeaf2fc);
                      buttonTextColor3[5] = Color(0xff000000);
                    });
                  }
                },
                  child: Text('후드', style: TextStyle(
                      color: buttonTextColor3[5], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/5, 40), backgroundColor: buttonColor3[5], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ],
            ),
            Text(''),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width/13,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child:Text('웨이트', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                )
              ],
            ),
            Text(''),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  if(selectedWeight[0] == 0) {
                    logCreationManager.updateSelectedWeight(1, 0);
                    logCreationManager.updateSelectedWeight(0, 1);
                    selectedWeight[1] = 0;
                    selectedWeight[0] = 1;
                    setState(() {
                      buttonColor4[1] = Color(0xffeaf2fc);
                      buttonTextColor4[1] = Color(0xff000000);
                      buttonColor4[0] = Color(0xff65abea);
                      buttonTextColor4[0] = Color(0xffffffff);
                    });
                  } else {
                    logCreationManager.updateSelectedWeight(0, 0);
                    selectedWeight[0] = 0;
                    setState(() {
                      buttonColor4[0] = Color(0xffeaf2fc);
                      buttonTextColor4[0] = Color(0xff000000);
                    });
                  }
                },
                  child: Text('벨트', style: TextStyle(
                      color: buttonTextColor4[0], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/2.4, 40), backgroundColor: buttonColor4[0], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/2.4,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffeaf2fc),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        height: 40, width: MediaQuery.of(context).size.width/6,
                        child: DropdownButton(
                          value:  selectedBelt,
                          items: belt
                              .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              logCreationManager.updateSelectedBelt(value!);
                              selectedBelt = value;
                            });
                          },
                          style: TextStyle(
                              fontSize: 18, color: Colors.black
                          ),
                          underline: SizedBox.shrink(),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/58,
                      ),
                      Text('KG')
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  if(selectedWeight[1] == 0) {
                    logCreationManager.updateSelectedWeight(0, 0);
                    logCreationManager.updateSelectedWeight(1, 1);
                    selectedWeight[0] = 0;
                    selectedWeight[1] = 1;
                    setState(() {
                      buttonColor4[0] = Color(0xffeaf2fc);
                      buttonTextColor4[0] = Color(0xff000000);
                      buttonColor4[1] = Color(0xff65abea);
                      buttonTextColor4[1] = Color(0xffffffff);
                    });
                  } else {
                    logCreationManager.updateSelectedWeight(1, 0);
                    selectedWeight[1] = 0;
                    setState(() {
                      buttonColor4[1] = Color(0xffeaf2fc);
                      buttonTextColor4[1] = Color(0xff000000);
                    });
                  }
                },
                  child: Text('포켓', style: TextStyle(
                      color: buttonTextColor4[1], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/2.4, 40), backgroundColor: buttonColor4[1], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/2.4,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffeaf2fc),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        height: 40, width: MediaQuery.of(context).size.width/6,
                        child: DropdownButton(
                          value:  selectedPocket,
                          items: pocket
                              .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              logCreationManager.updateSelectedPocket(value!);
                              selectedPocket = value;
                            });
                          },
                          style: TextStyle(
                              fontSize: 18, color: Colors.black
                          ),
                          underline: SizedBox.shrink(),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/58,
                      ),
                      Text('KG')
                    ],
                  ),
                ),
              ],
            ),
            Text(''),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width/13,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child:Text('워터 타입', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                )
              ],
            ),
            Text(""),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  if(selectedWaterType[0] == 0) {
                    logCreationManager.updateSelectedWaterType(1, 0);
                    logCreationManager.updateSelectedWaterType(0, 1);
                    selectedWaterType[1] = 0;
                    selectedWaterType[0] = 1;
                    setState(() {
                      buttonColor5[1] = Color(0xffeaf2fc);
                      buttonTextColor5[1] = Color(0xff000000);
                      buttonColor5[0] = Color(0xff65abea);
                      buttonTextColor5[0] = Color(0xffffffff);
                    });
                  } else {
                    logCreationManager.updateSelectedWaterType(0, 0);
                    selectedWaterType[0] = 0;
                    setState(() {
                      buttonColor5[0] = Color(0xffeaf2fc);
                      buttonTextColor5[0] = Color(0xff000000);
                    });
                  }
                },
                  child: Text('해수', style: TextStyle(
                      color: buttonTextColor5[0], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/2.4, 40), backgroundColor: buttonColor5[0], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/50,
                ),
                ElevatedButton(onPressed: () {
                  if(selectedWaterType[1] == 0) {
                    logCreationManager.updateSelectedWaterType(0, 0);
                    logCreationManager.updateSelectedWaterType(1, 1);
                    selectedWaterType[0] = 0;
                    selectedWaterType[1] = 1;
                    setState(() {
                      buttonColor5[0] = Color(0xffeaf2fc);
                      buttonTextColor5[0] = Color(0xff000000);
                      buttonColor5[1] = Color(0xff65abea);
                      buttonTextColor5[1] = Color(0xffffffff);
                    });
                  } else {
                    logCreationManager.updateSelectedWaterType(1, 0);
                    selectedWaterType[1] = 0;
                    setState(() {
                      buttonColor5[1] = Color(0xffeaf2fc);
                      buttonTextColor5[1] = Color(0xff000000);
                    });
                  }
                },
                  child: Text('담수', style: TextStyle(
                      color: buttonTextColor5[1], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/2.4, 40), backgroundColor: buttonColor5[1], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
