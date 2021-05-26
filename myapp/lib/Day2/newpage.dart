import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

//stf
class _State extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(child: Image.asset("assets/2.PNG")),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: ' Phone Number',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: ' Password',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  'Submit',
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.grey,
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  'Forget Password? No yawa. Tap me',
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[100],
                onPrimary: Colors.grey,
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  'No Account ? Sign Up',
                ),
              ),
            ),
          ),
        
        ]));
  }
}
