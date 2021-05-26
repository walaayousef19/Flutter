import 'package:flutter/material.dart';

class MyPage2 extends StatefulWidget {
  String text;
  MyPage2(this.text);

  @override
  _MyPage2State createState() => _MyPage2State();
}

class _MyPage2State extends State<MyPage2> {  
  TextStyle mystyle=TextStyle(color: Colors.red,fontSize: 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My New Page 2"),
      ),
      body: ListView(children: [
        Center(child: Text(widget.text,style:mystyle)),
      ]),
    );
  }
}
