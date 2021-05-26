
import 'package:app1/Day3/Models/Todos.dart';
import 'package:dio/dio.dart';

class TodosService{
  
    String baseURL="https://jsonplaceholder.typicode.com";
    Future<List<Todos>> getTodos() async{
      List<Todos> list=[];
      Response response;
      response=await Dio().get('$baseURL/todos');
      var data=response.data;
      data.forEach((item){
        list.add(Todos.fromJson(item));
      });
      return list;
      }
  
}