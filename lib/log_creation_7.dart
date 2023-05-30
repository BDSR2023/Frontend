import 'package:flutter/material.dart';
import 'log_creation_8.dart';

class log_creation_7 extends StatelessWidget {
  log_creation_7({Key? key}) : super(key: key);

  var comment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6FA9E5),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: Text('COMMENT',style: TextStyle(color: Colors.black, fontSize: 40),),
            ),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                height: double.infinity,
                child: TextField(
                  decoration: InputDecoration(border: InputBorder.none,),
                  style: TextStyle(fontSize: 25),
                  maxLines: null,
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Color(0xff6FA9E5), elevation: 0.0,
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
                          MaterialPageRoute(builder: (context) => log_creation_8()),
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
