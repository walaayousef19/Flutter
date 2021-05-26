import 'package:app1/Day3/Models/Posts.dart';
import 'package:app1/Day3/Service/postService.dart';
import 'package:app1/Day3/View/postDetails.dart';
import 'package:app1/Day3/View/postsCard.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  bool isLoading = true;
  List<Post> posts = [];
  getPosts() async {
    posts = await PostService().getPosts();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Posts"),
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PostDetails(
                          body: posts[index].body,
                          title: posts[index].title,
                        )),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CardWidget(
                title: posts[index].title,
                idPost: posts[index].id,
              ),
            ),
          );
        },
      ),
    );
  }
}
