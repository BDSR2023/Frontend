import 'package:flutter/material.dart';

class logCreation6 extends StatefulWidget {
  logCreation6({Key? key}) : super(key: key);

  @override
  State<logCreation6> createState() => _logCreation6State();
}

class _logCreation6State extends State<logCreation6> {
  var entryTimeHour = '0';
  var entryTimeMin = '0';
  var exitTimeHour = '0';
  var exitTimeMin = '0';
  var startPressure = '0';
  var endPressure = '0';
  var averageDepth = '0.0';
  var maxDepth = '0.0';
  var safetyStop = '0';

  var deepStopDepth1 = '0.0';
  var deepStopMin1 = '0';
  var deepStopDepth2 = '0.0';
  var deepStopMin2 = '0';

  final _hours = ['0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19'
    ,'20','21','22','23','24'];
  final _mins = ['0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19'
    ,'20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39'
    ,'40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59',];
  final _bars = ['0', '5', '10', '15', '20', '25', '30', '35', '40', '45', '50', '55', '60', '65', '70', '75', '80', '85', '90', '95',
    '100', '105', '110', '115', '120', '125', '130', '135', '140', '145', '150', '155', '160', '165', '170', '175', '180', '185', '190', '195',
    '200'];
  final _depth = ['0.0', '0.5', '1.0', '1.5', '2.0', '2.5', '3.0', '3.5', '4.0', '4.5', '5.0', '5.5', '6.0', '6.5', '7.0', '7.5', '8.0', '8.5', '9.0', '9.5',
    '10.0', '10.5', '11.0', '11.5', '12.0', '12.5', '13.0', '13.5', '14.0', '14.5', '15.0', '15.5', '16.0', '16.5', '17.0', '17.5', '18.0', '18.5', '19.0', '19.5',
    '20.0', '20.5', '21.0', '21.5', '22.0', '22.5', '23.0', '23.5', '24.0', '24.5', '25.0', '25.5', '26.0', '26.5', '27.0', '27.5', '28.0', '28.5', '29.0', '29.5',
    '30.0', '30.5', '31.0', '31.5', '32.0', '32.5', '33.0', '33.5', '34.0', '34.5', '35.0', '35.5', '36.0', '36.5', '37.0', '37.5', '38.0', '38.5', '39.0', '39.5',
    '40.0'];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
        child: Column(
          children: [
            Flexible(
              child: Container(

              ),
            ),
            Flexible(
              flex: 2,
              child: Row(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('입수 시간',style: TextStyle(fontFamily: "GmarketSansTTF", color: Colors.black, fontSize: 20),),
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xffEBF2FB),
                                ),
                                height: 30, width: 45,
                                child: DropdownButton(
                                  value: entryTimeHour,
                                  items: _hours.map((e) => DropdownMenuItem(
                                    value: e, // 선택 시 onChanged 를 통해 반환할 value
                                    child: Text(e),
                                  ))
                                      .toList(),
                                  onChanged: (value) { // items 의 DropdownMenuItem 의 value 반환
                                    setState(() {
                                      entryTimeHour = value!;
                                    });
                                  },
                                  underline: SizedBox.shrink(),
                                )
                              ),
                              SizedBox(
                                child: Text('시',style: TextStyle(color: Colors.black, fontSize: 20),),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xffEBF2FB),
                                ),
                                height: 30, width: 45,
                                child: DropdownButton(
                                  value: entryTimeMin,
                                  items: _mins.map((e) => DropdownMenuItem(
                                    value: e, // 선택 시 onChanged 를 통해 반환할 value
                                    child: Text(e),
                                  ))
                                      .toList(),
                                  onChanged: (value) { // items 의 DropdownMenuItem 의 value 반환
                                    setState(() {
                                      entryTimeMin = value!;
                                    });
                                  },
                                  underline: SizedBox.shrink(),
                                )
                              ),
                              SizedBox(
                                child: Text('분',style: TextStyle(color: Colors.black, fontSize: 20),),
                              )
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
                        Text('출수 시간',style: TextStyle(color: Colors.black, fontSize: 20),),
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xffEBF2FB),
                                ),
                                height: 30, width: 45,
                                child: DropdownButton(
                                  value: exitTimeHour,
                                  items: _hours.map((e) => DropdownMenuItem(
                                    value: e, // 선택 시 onChanged 를 통해 반환할 value
                                    child: Text(e),
                                  ))
                                      .toList(),
                                  onChanged: (value) { // items 의 DropdownMenuItem 의 value 반환
                                    setState(() {
                                      exitTimeHour = value!;
                                    });
                                  },
                                  underline: SizedBox.shrink(),
                                )
                              ),
                              SizedBox(
                                child: Text('시',style: TextStyle(color: Colors.black, fontSize: 20),),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xffEBF2FB),
                                ),
                                height: 30, width: 45,
                                child: DropdownButton(
                                  value: exitTimeMin,
                                  items: _mins.map((e) => DropdownMenuItem(
                                    value: e, // 선택 시 onChanged 를 통해 반환할 value
                                    child: Text(e),
                                  ))
                                      .toList(),
                                  onChanged: (value) { // items 의 DropdownMenuItem 의 value 반환
                                    setState(() {
                                      exitTimeMin = value!;
                                    });
                                  },
                                  underline: SizedBox.shrink(),
                                )
                              ),
                              SizedBox(
                                child: Text('분',style: TextStyle(color: Colors.black, fontSize: 20),),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Row(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('시작 압력',style: TextStyle(color: Colors.black, fontSize: 20),),
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xffEBF2FB),
                                ),
                                  height: 30, width: 60,
                                child: DropdownButton(
                                  value: startPressure,
                                  items: _bars.map((e) => DropdownMenuItem(
                                    value: e, // 선택 시 onChanged 를 통해 반환할 value
                                    child: Text(e),
                                  ))
                                      .toList(),
                                  onChanged: (value) { // items 의 DropdownMenuItem 의 value 반환
                                    setState(() {
                                      startPressure = value!;
                                    });
                                  },
                                  underline: SizedBox.shrink(),
                                )
                              ),
                              SizedBox(
                                child: Text('bar',style: TextStyle(color: Colors.black, fontSize: 20),),
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
                        Text('종료 압력',style: TextStyle(color: Colors.black, fontSize: 20),),
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xffEBF2FB),
                                ),
                                  height: 30, width: 60,
                                child: DropdownButton(
                                  value: endPressure,
                                  items: _bars.map((e) => DropdownMenuItem(
                                    value: e, // 선택 시 onChanged 를 통해 반환할 value
                                    child: Text(e),
                                  ))
                                      .toList(),
                                  onChanged: (value) { // items 의 DropdownMenuItem 의 value 반환
                                    setState(() {
                                      endPressure = value!;
                                    });
                                  },
                                  underline: SizedBox.shrink(),
                                )
                              ),
                              SizedBox(
                                child: Text('bar',style: TextStyle(color: Colors.black, fontSize: 20),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Row(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('평균 수심',style: TextStyle(color: Colors.black, fontSize: 20),),
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xffEBF2FB),
                                ),
                                  height: 30, width: 60,
                                child: DropdownButton(
                                  value: averageDepth,
                                  items: _depth.map((e) => DropdownMenuItem(
                                    value: e, // 선택 시 onChanged 를 통해 반환할 value
                                    child: Text(e),
                                  ))
                                      .toList(),
                                  onChanged: (value) { // items 의 DropdownMenuItem 의 value 반환
                                    setState(() {
                                      averageDepth = value!;
                                    });
                                  },
                                  underline: SizedBox.shrink(),
                                )
                              ),
                              SizedBox(
                                child: Text('m',style: TextStyle(color: Colors.black, fontSize: 20),),
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
                        Text('최대 수심',style: TextStyle(color: Colors.black, fontSize: 20),),
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xffEBF2FB),
                                ),
                                  height: 30, width: 60,
                                child: DropdownButton(
                                  value: maxDepth,
                                  items: _depth.map((e) => DropdownMenuItem(
                                    value: e, // 선택 시 onChanged 를 통해 반환할 value
                                    child: Text(e),
                                  ))
                                      .toList(),
                                  onChanged: (value) { // items 의 DropdownMenuItem 의 value 반환
                                    setState(() {
                                      maxDepth = value!;
                                    });
                                  },
                                  underline: SizedBox.shrink(),
                                )
                              ),
                              SizedBox(
                                child: Text('m',style: TextStyle(color: Colors.black, fontSize: 20),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 180,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('안전 정지',style: TextStyle(color: Colors.black, fontSize: 20),),
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 0, 5),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Color(0xffEBF2FB),
                              ),
                                height: 30, width: 60,
                              child: DropdownButton(
                                value: safetyStop,
                                items: _mins.map((e) => DropdownMenuItem(
                                  value: e, // 선택 시 onChanged 를 통해 반환할 value
                                  child: Text(e),
                                ))
                                    .toList(),
                                onChanged: (value) { // items 의 DropdownMenuItem 의 value 반환
                                  setState(() {
                                    safetyStop = value!;
                                  });
                                },
                                underline: SizedBox.shrink(),
                              )
                            ),
                            SizedBox(
                              child: Text('min(분)',style: TextStyle(color: Colors.black, fontSize: 20),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('감압정지',style: TextStyle(color: Colors.black, fontSize: 20),),
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 0, 5),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Color(0xffEBF2FB),
                              ),
                                height: 30, width: 60,
                              child: DropdownButton(
                                value: deepStopDepth1,
                                items: _depth.map((e) => DropdownMenuItem(
                                  value: e, // 선택 시 onChanged 를 통해 반환할 value
                                  child: Text(e),
                                ))
                                    .toList(),
                                onChanged: (value) { // items 의 DropdownMenuItem 의 value 반환
                                  setState(() {
                                    deepStopDepth1 = value!;
                                  });
                                },
                                underline: SizedBox.shrink(),
                              )
                            ),
                            SizedBox(
                              child: Text('m',style: TextStyle(color: Colors.black, fontSize: 20),),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Color(0xffEBF2FB),
                              ),
                                height: 30, width: 60,
                              child: DropdownButton(
                                value: deepStopMin1,
                                items: _mins.map((e) => DropdownMenuItem(
                                  value: e, // 선택 시 onChanged 를 통해 반환할 value
                                  child: Text(e),
                                ))
                                    .toList(),
                                onChanged: (value) { // items 의 DropdownMenuItem 의 value 반환
                                  setState(() {
                                    deepStopMin1 = value!;
                                  });
                                },
                                underline: SizedBox.shrink(),
                              )
                            ),
                            SizedBox(
                              child: Text('min(분)',style: TextStyle(color: Colors.black, fontSize: 20),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 5, 0, 5),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Color(0xffEBF2FB),
                          ),
                            height: 30, width: 60,
                          child: DropdownButton(
                            value: deepStopDepth2,
                            items: _depth.map((e) => DropdownMenuItem(
                              value: e, // 선택 시 onChanged 를 통해 반환할 value
                              child: Text(e),
                            ))
                                .toList(),
                            onChanged: (value) { // items 의 DropdownMenuItem 의 value 반환
                              setState(() {
                                deepStopDepth2 = value!;
                              });
                            },
                            underline: SizedBox.shrink(),
                          )
                        ),
                        SizedBox(
                          child: Text('m',style: TextStyle(color: Colors.black, fontSize: 20),),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Color(0xffEBF2FB),
                          ),
                            height: 30, width: 60,
                          child: DropdownButton(
                            value: deepStopMin2,
                            items: _mins.map((e) => DropdownMenuItem(
                              value: e, // 선택 시 onChanged 를 통해 반환할 value
                              child: Text(e),
                            ))
                                .toList(),
                            onChanged: (value) { // items 의 DropdownMenuItem 의 value 반환
                              setState(() {
                                deepStopMin2 = value!;
                              });
                            },
                            underline: SizedBox.shrink(),
                          )
                        ),
                        SizedBox(
                          child: Text('min(분)',style: TextStyle(color: Colors.black, fontSize: 20),),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
