import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'logCreationManager.dart';



class logCreation5 extends StatefulWidget {
  const logCreation5({Key? key}) : super(key: key);

  @override
  State<logCreation5> createState() => _logCreation5State();
}

class _logCreation5State extends State<logCreation5> {

  final temperature = ['0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19'
    ,'20','21','22','23','24','25','26','27','28','29','30'];
  var selectedSurfaceTem = '0';
  var selectedBottomTem = '0';

  final visibility = ['0','0,1','0.5','1','1.5','2','3','4','5','6','7','8','9','10','11','12','13','14','15','20','25','30','무제한'];
  var selectedVisibility = '0';

  var buttonColor1 = [Color(0xffeaf2fc),Color(0xffeaf2fc),Color(0xffeaf2fc)];
  var buttonTextColor1 = [Color(0xff000000),Color(0xff000000),Color(0xff000000)];

  var buttonColor2 = [Color(0xffeaf2fc),Color(0xffeaf2fc),Color(0xffeaf2fc)];
  var buttonTextColor2 = [Color(0xff000000),Color(0xff000000),Color(0xff000000)];

  var buttonColor3 = [Color(0xffeaf2fc),Color(0xffeaf2fc),Color(0xffeaf2fc)];
  var buttonTextColor3 = [Color(0xff000000),Color(0xff000000),Color(0xff000000)];

  var buttonColor4 = [Color(0xffeaf2fc),Color(0xffeaf2fc)];
  var buttonTextColor4 = [Color(0xff000000),Color(0xff000000)];

  var selectedTide = [0,0,0];
  var selectedWave = [0,0,0];
  var selectedSerge = [0,0,0];


  @override
  void initState() {
    super.initState();
    final logCreationManager = Provider.of<LogCreationManager>(context, listen: false);

    selectedSurfaceTem = logCreationManager.selectedSurfaceTem;
    selectedBottomTem = logCreationManager.selectedBottomTem;
    selectedTide = logCreationManager.selectedTide;
    selectedWave = logCreationManager.selectedWave;
    selectedSerge = logCreationManager.selectedSerge;

    for (int i =0; i<3; i++) {
      if (selectedTide[i] == 1) {
        setState(() {
          buttonColor1[i] = Color(0xff65abea);
          buttonTextColor1[i] = Color(0xffffffff);
        });
      }
    }
    for (int i =0; i<3; i++) {
      if (selectedWave[i] == 1) {
        setState(() {
          buttonColor2[i] = Color(0xff65abea);
          buttonTextColor2[i] = Color(0xffffffff);
        });
      }
    }
    for (int i =0; i<3; i++) {
      if (selectedSerge[i] == 1) {
        setState(() {
          buttonColor3[i] = Color(0xff65abea);
          buttonTextColor3[i] = Color(0xffffffff);
        });
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    final logCreationManager = Provider.of<LogCreationManager>(context);

    return  Scaffold(
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
                Text('조류', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)
              ],
            ),
            Text(""),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  if(selectedTide[0] == 0) {
                    logCreationManager.updateSelectedTide(0, 1);
                    logCreationManager.updateSelectedTide(1, 0);
                    logCreationManager.updateSelectedTide(2, 0);
                    selectedTide[0] = 1;
                    selectedTide[1] = 0;
                    selectedTide[2] = 0;
                    setState(() {
                      buttonColor1[0] = Color(0xff65abea);
                      buttonTextColor1[0] = Color(0xffffffff);
                      buttonColor1[1] = Color(0xffeaf2fc);
                      buttonTextColor1[1] = Color(0xff000000);
                      buttonColor1[2] = Color(0xffeaf2fc);
                      buttonTextColor1[2] = Color(0xff000000);
                    });
                  } else {
                    logCreationManager.updateSelectedTide(0, 0);
                    selectedTide[0] = 0;
                    setState(() {
                      buttonColor1[0] = Color(0xffeaf2fc);
                      buttonTextColor1[0] = Color(0xff000000);
                    });
                  }
                },
                  child: Text('강함', style: TextStyle(
                      color: buttonTextColor1[0], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/3.7, 40), backgroundColor: buttonColor1[0], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/50,
                ),
                ElevatedButton(onPressed: () {
                  if(selectedTide[1] == 0) {
                    logCreationManager.updateSelectedTide(0, 0);
                    logCreationManager.updateSelectedTide(1, 1);
                    logCreationManager.updateSelectedTide(2, 0);
                    selectedTide[0] = 0;
                    selectedTide[1] = 1;
                    selectedTide[2] = 0;
                    setState(() {
                      buttonColor1[0] = Color(0xffeaf2fc);
                      buttonTextColor1[0] = Color(0xff000000);
                      buttonColor1[1] = Color(0xff65abea);
                      buttonTextColor1[1] = Color(0xffffffff);
                      buttonColor1[2] = Color(0xffeaf2fc);
                      buttonTextColor1[2] = Color(0xff000000);
                    });
                  } else {
                    logCreationManager.updateSelectedTide(1, 0);
                    selectedTide[1] = 0;
                    setState(() {
                      buttonColor1[1] = Color(0xffeaf2fc);
                      buttonTextColor1[1] = Color(0xff000000);
                    });
                  }
                },
                  child: Text('중간', style: TextStyle(
                      color: buttonTextColor1[1], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/3.7, 40), backgroundColor: buttonColor1[1], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/50,
                ),
                ElevatedButton(onPressed: () {
                  if(selectedTide[2] == 0) {
                    logCreationManager.updateSelectedTide(0, 0);
                    logCreationManager.updateSelectedTide(1, 0);
                    logCreationManager.updateSelectedTide(2, 1);
                    selectedTide[0] = 0;
                    selectedTide[1] = 0;
                    selectedTide[2] = 1;
                    setState(() {
                      buttonColor1[0] = Color(0xffeaf2fc);
                      buttonTextColor1[0] = Color(0xff000000);
                      buttonColor1[1] = Color(0xffeaf2fc);
                      buttonTextColor1[1] = Color(0xff000000);
                      buttonColor1[2] = Color(0xff65abea);
                      buttonTextColor1[2] = Color(0xffffffff);
                    });
                  } else {
                    logCreationManager.updateSelectedTide(2, 0);
                    selectedTide[2] = 0;
                    setState(() {
                      buttonColor1[2] = Color(0xffeaf2fc);
                      buttonTextColor1[2] = Color(0xff000000);
                    });
                  }
                },
                  child: Text('약함', style: TextStyle(
                      color: buttonTextColor1[2], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/3.7, 40), backgroundColor: buttonColor1[2], shadowColor: Colors.transparent,
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
                  child:Text('파도', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                )
              ],
            ),
            Text(' '),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  if(selectedWave[0] == 0) {
                    logCreationManager.updateSelectedWave(0, 1);
                    logCreationManager.updateSelectedWave(1, 0);
                    logCreationManager.updateSelectedWave(2, 0);
                    selectedWave[0] = 1;
                    selectedWave[1] = 0;
                    selectedWave[2] = 0;
                    setState(() {
                      buttonColor2[0] = Color(0xff65abea);
                      buttonTextColor2[0] = Color(0xffffffff);
                      buttonColor2[1] = Color(0xffeaf2fc);
                      buttonTextColor2[1] = Color(0xff000000);
                      buttonColor2[2] = Color(0xffeaf2fc);
                      buttonTextColor2[2] = Color(0xff000000);
                    });
                  } else {
                    logCreationManager.updateSelectedWave(0, 0);
                    selectedWave[0] = 0;
                    setState(() {
                      buttonColor2[0] = Color(0xffeaf2fc);
                      buttonTextColor2[0] = Color(0xff000000);
                    });
                  }
                },
                  child: Text('강함', style: TextStyle(
                      color: buttonTextColor2[0], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/3.7, 40), backgroundColor: buttonColor2[0], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/50,
                ),
                ElevatedButton(onPressed: () {
                  if(selectedWave[1] == 0) {
                    logCreationManager.updateSelectedWave(0, 0);
                    logCreationManager.updateSelectedWave(1, 1);
                    logCreationManager.updateSelectedWave(2, 0);
                    selectedWave[0] = 0;
                    selectedWave[1] = 1;
                    selectedWave[2] = 0;
                    setState(() {
                      buttonColor2[0] = Color(0xffeaf2fc);
                      buttonTextColor2[0] = Color(0xff000000);
                      buttonColor2[1] = Color(0xff65abea);
                      buttonTextColor2[1] = Color(0xffffffff);
                      buttonColor2[2] = Color(0xffeaf2fc);
                      buttonTextColor2[2] = Color(0xff000000);
                    });
                  } else {
                    logCreationManager.updateSelectedWave(1, 0);
                    selectedWave[1] = 0;
                    setState(() {
                      buttonColor2[1] = Color(0xffeaf2fc);
                      buttonTextColor2[1] = Color(0xff000000);
                    });
                  }
                },
                  child: Text('중간', style: TextStyle(
                      color: buttonTextColor2[1], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/3.7, 40), backgroundColor: buttonColor2[1], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/50,
                ),
                ElevatedButton(onPressed: () {
                  if(selectedWave[2] == 0) {
                    logCreationManager.updateSelectedWave(0, 0);
                    logCreationManager.updateSelectedWave(1, 0);
                    logCreationManager.updateSelectedWave(2, 1);
                    selectedWave[0] = 0;
                    selectedWave[1] = 0;
                    selectedWave[2] = 1;
                    setState(() {
                      buttonColor2[0] = Color(0xffeaf2fc);
                      buttonTextColor2[0] = Color(0xff000000);
                      buttonColor2[1] = Color(0xffeaf2fc);
                      buttonTextColor2[1] = Color(0xff000000);
                      buttonColor2[2] = Color(0xff65abea);
                      buttonTextColor2[2] = Color(0xffffffff);
                    });
                  } else {
                    logCreationManager.updateSelectedWave(2, 0);
                    selectedWave[2] = 0;
                    setState(() {
                      buttonColor2[2] = Color(0xffeaf2fc);
                      buttonTextColor2[2] = Color(0xff000000);
                    });
                  }
                },
                  child: Text('약함', style: TextStyle(
                      color: buttonTextColor2[2], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/3.7, 40), backgroundColor: buttonColor2[2], shadowColor: Colors.transparent,
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
                  child:Text('써지',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                )
              ],
            ),
            Text(""),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  if(selectedSerge[0] == 0) {
                    logCreationManager.updateSelectedSerge(0, 1);
                    logCreationManager.updateSelectedSerge(1, 0);
                    logCreationManager.updateSelectedSerge(2, 0);
                    selectedSerge[0] = 1;
                    selectedSerge[1] = 0;
                    selectedSerge[2] = 0;
                    setState(() {
                      buttonColor3[0] = Color(0xff65abea);
                      buttonTextColor3[0] = Color(0xffffffff);
                      buttonColor3[1] = Color(0xffeaf2fc);
                      buttonTextColor3[1] = Color(0xff000000);
                      buttonColor3[2] = Color(0xffeaf2fc);
                      buttonTextColor3[2] = Color(0xff000000);
                    });
                  } else {
                    logCreationManager.updateSelectedSerge(0, 0);
                    selectedSerge[0] = 0;
                    setState(() {
                      buttonColor3[0] = Color(0xffeaf2fc);
                      buttonTextColor3[0] = Color(0xff000000);
                    });
                  }
                },
                  child: Text('강함', style: TextStyle(
                      color: buttonTextColor3[0], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/3.7, 40), backgroundColor: buttonColor3[0], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/50,
                ),
                ElevatedButton(onPressed: () {
                  if(selectedSerge[1] == 0) {
                    logCreationManager.updateSelectedSerge(0, 0);
                    logCreationManager.updateSelectedSerge(1, 1);
                    logCreationManager.updateSelectedSerge(2, 0);
                    selectedSerge[0] = 0;
                    selectedSerge[1] = 1;
                    selectedSerge[2] = 0;
                    setState(() {
                      buttonColor3[0] = Color(0xffeaf2fc);
                      buttonTextColor3[0] = Color(0xff000000);
                      buttonColor3[1] = Color(0xff65abea);
                      buttonTextColor3[1] = Color(0xffffffff);
                      buttonColor3[2] = Color(0xffeaf2fc);
                      buttonTextColor3[2] = Color(0xff000000);
                    });
                  } else {
                    logCreationManager.updateSelectedSerge(1, 0);
                    selectedSerge[1] = 0;
                    setState(() {
                      buttonColor3[1] = Color(0xffeaf2fc);
                      buttonTextColor3[1] = Color(0xff000000);
                    });
                  }
                },
                  child: Text('중간', style: TextStyle(
                      color: buttonTextColor3[1], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/3.7, 40), backgroundColor: buttonColor3[1], shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/50,
                ),
                ElevatedButton(onPressed: () {
                  if(selectedSerge[2] == 0) {
                    logCreationManager.updateSelectedSerge(0, 0);
                    logCreationManager.updateSelectedSerge(1, 0);
                    logCreationManager.updateSelectedSerge(2, 1);
                    selectedSerge[0] = 0;
                    selectedSerge[1] = 0;
                    selectedSerge[2] = 1;
                    setState(() {
                      buttonColor3[0] = Color(0xffeaf2fc);
                      buttonTextColor3[0] = Color(0xff000000);
                      buttonColor3[1] = Color(0xffeaf2fc);
                      buttonTextColor3[1] = Color(0xff000000);
                      buttonColor3[2] = Color(0xff65abea);
                      buttonTextColor3[2] = Color(0xffffffff);
                    });
                  } else {
                    logCreationManager.updateSelectedSerge(2, 0);
                    selectedSerge[2] = 0;
                    setState(() {
                      buttonColor3[2] = Color(0xffeaf2fc);
                      buttonTextColor3[2] = Color(0xff000000);
                    });
                  }
                },
                  child: Text('약함', style: TextStyle(
                      color: buttonTextColor3[2], fontFamily: 'GmarketSansTTF', fontWeight: FontWeight.w500, fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width/3.7, 40), backgroundColor: buttonColor3[2], shadowColor: Colors.transparent,
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
                  child:Text('수온', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                )
              ],
            ),
            Text(''),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {

                },
                  child: Text('수면', style: TextStyle(
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
                  width: MediaQuery.of(context).size.width/50,
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
                          value: selectedSurfaceTem,
                          items: temperature
                              .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              logCreationManager.updateSelectedSurfaceTem(value!);
                              selectedSurfaceTem = value;
                            });
                          },
                          style: TextStyle(
                              fontSize: 18, color: Colors.black
                          ),
                          underline: SizedBox.shrink(),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('°C', style: TextStyle(
                        fontSize: 19,
                      ),)
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

                },
                  child: Text('바텀', style: TextStyle(
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
                  width: MediaQuery.of(context).size.width/50,
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
                          value:  selectedBottomTem,
                          items: temperature
                              .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              logCreationManager.updateSelectedBottomTem(value!);
                              selectedBottomTem = value;
                            });
                          },
                          style: TextStyle(
                              fontSize: 18, color: Colors.black
                          ),
                          underline: SizedBox.shrink(),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('°C', style: TextStyle(
                        fontSize: 19,
                      ),)
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
                  child:Text('시야', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                )
              ],
            ),
            Text(""),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                        height: 40, width: MediaQuery.of(context).size.width/4,
                        child: DropdownButton(
                          value: selectedVisibility,
                          items: visibility
                              .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              logCreationManager.updateSelectedVisibility(value!);
                              selectedVisibility = value;
                            });
                          },
                          style: TextStyle(
                              fontSize: 18, color: Colors.black
                          ),
                          underline: SizedBox.shrink(),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('m', style: TextStyle(
                        fontSize: 19,
                      ),),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/50,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/2.4,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
