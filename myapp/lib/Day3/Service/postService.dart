
import 'package:app1/Day3/Models/Posts.dart';
import 'package:dio/dio.dart';

class PostService{
  
    String baseURL="https://jsonplaceholder.typicode.com";
    Future<List<Post>> getPosts() async{
      List<Post> list=[];
      Response response;
      response=await Dio().get('$baseURL/posts');
      var data=response.data;
      data.forEach((item){
        list.add(Post.fromJson(item));
      });
      return list;
          }
  
}