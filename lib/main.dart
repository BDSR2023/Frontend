import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(MaterialApp(
    home:MyApp(),debugShowCheckedModeBanner: false,
    theme: ThemeData(scaffoldBackgroundColor: Color(0xffd1dce6)),)
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int a=6;
  var scroll= ScrollController();

  @override
  void initState() {
    super.initState();
    scroll.addListener(() {
      if(scroll.position.pixels == scroll.position.maxScrollExtent){
        setState(() {
          a=a+3;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black,),
              onPressed: (){},),
          ],
        ),
      ),
        body:CustomScrollView( controller: scroll,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
              children: [
                Icon(Icons.account_circle,size: 100,),
                Container(
                  padding: EdgeInsets.all(10),
                  child:Text('@바다람사',style: TextStyle(fontSize:20, fontWeight: FontWeight.bold),),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text('22',style: TextStyle(fontWeight: FontWeight.bold,),),
                        Text('게시물')
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text('94',style: TextStyle(fontWeight: FontWeight.bold,),),
                        Text('팔로워')
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text('42',style: TextStyle(fontWeight: FontWeight.bold,),),
                        Text('팔로잉')
                      ],
                    ),
                  )
                ],
              ),



                Container(width: MediaQuery.of(context).size.width/1.3, height: 40,
                  child: Row(
                    children: [
                      Flexible(child: Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        alignment: Alignment.centerLeft,
                        child: Text('태그',style: TextStyle(fontWeight: FontWeight.bold,),),
                        color: Colors.white,margin:EdgeInsets.all(3),),flex: 3,),
                      Flexible(child: Container(color: Colors.white,margin:EdgeInsets.all(3),),flex: 7,),
                    ],
                  ),),
                Container(width: MediaQuery.of(context).size.width/1.3, height: 40,
                  child: Row(
                    children: [
                      Flexible(child: Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        alignment: Alignment.centerLeft,
                        child: Text('자기소개',style: TextStyle(fontWeight: FontWeight.bold,),),
                        color: Colors.white,margin:EdgeInsets.all(3),),flex: 3,),
                      Flexible(child: Container(color: Colors.white,margin:EdgeInsets.all(3),),flex: 7,),
                    ],
                  ),),
                Container(width: MediaQuery.of(context).size.width/1.3, height: 40,
                  child: Row(
                    children: [
                      Flexible(child: Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        alignment: Alignment.centerLeft,
                        child: Text('소속단체',style: TextStyle(fontWeight: FontWeight.bold,),),
                        color: Colors.white,margin:EdgeInsets.all(3),),flex: 3,),
                      Flexible(child: Container(color: Colors.white,margin:EdgeInsets.all(3),),flex: 7,),
                    ],
                  ),),
                Container(width: MediaQuery.of(context).size.width/1.3, height: 40,
                  child: Row(
                    children: [
                      Flexible(child: Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        alignment: Alignment.centerLeft,
                        child: Text('로그 수',style: TextStyle(fontWeight: FontWeight.bold,),),
                        color: Colors.white,margin:EdgeInsets.all(3),),flex: 3,),
                      Flexible(child: Container(color: Colors.white,margin:EdgeInsets.all(3),),flex: 7,),
                    ],
                  ),),
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width/3,
                      height: 30,
                      margin: EdgeInsets.fromLTRB(10, 20, 0, 10),
                    ),
                    Container(
                      child: Text('조회',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                      margin: EdgeInsets.fromLTRB(10, 20, 25, 10),
                    )
                  ],
                ),

              ],),
            ),
            SliverGrid(
                delegate: SliverChildBuilderDelegate(
                      (c,i) => Container(color : Colors.white,margin: EdgeInsets.all(5),),
                  childCount: a,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 3 ))

          ],

        )

    );
  }
}



