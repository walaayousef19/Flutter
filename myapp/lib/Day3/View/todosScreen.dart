
import 'package:app1/Day3/Models/Todos.dart';
import 'package:app1/Day3/Service/todosService.dart';
import 'package:app1/Day3/View/todosCard.dart';
import 'package:app1/Day3/View/todosDetails.dart';
import 'package:flutter/material.dart';

class TodosScreen extends StatefulWidget {
  @override
  _TodosScreenState createState() => _TodosScreenState();
}

class _TodosScreenState extends State<TodosScreen> {
  bool isLoading = true;
  List<Todos> todos = [];
  getTodos() async {
    todos = await TodosService().getTodos();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Todos"),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TodosDetails(
                          userId: todos[index].userId,
                          title: todos[index].title,
                        )),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CardWidget( 
                 todosID: todos[index].id,
                title: todos[index].title,
            
              ),
            ),
          );
        },
      ),
    );
  }
}
