import 'package:flutter/material.dart';

class TodosDetails extends StatefulWidget {
  String title;
  int userId;
  TodosDetails({ this.title,  this.userId});
  @override
  _TodosDetailsState createState() => _TodosDetailsState();
}

class _TodosDetailsState extends State<TodosDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("${widget.userId}"),
          )
        ],
      ),
    );
  }
}
