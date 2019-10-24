import 'package:flutter/material.dart';
import 'package:flutter_demo2/custom_route.dart';
import 'package:flutter_demo2/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('FirstPage', style: TextStyle(fontSize: 36.0)),
        elevation: 0.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64.0
          ),
          onPressed: () {
            Navigator.of(context).push(
              // MaterialPageRoute(
              //   builder: (BuildContext context) {
              //     return SecondPage();
              //   }
              // )
              CustomRoute(SecondPage())
            );
          },
        ),
      ),
    );
  }
}