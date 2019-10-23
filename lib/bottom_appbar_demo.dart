import 'package:flutter/material.dart';

class BottomAppbarDemo extends StatefulWidget {
  BottomAppbarDemo({Key key}) : super(key: key);

  @override
  _BottomAppbarDemoState createState() => _BottomAppbarDemoState();
}

class _BottomAppbarDemoState extends State<BottomAppbarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: '悬浮按钮',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: () {},
            ),
            // SizedBox(),
            IconButton(
              icon: Icon(Icons.airline_seat_flat),
              color: Colors.white,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}