import 'package:flutter/material.dart';
import 'package:flutter_demo2/each_view.dart';

class BottomAppbarDemo extends StatefulWidget {
  BottomAppbarDemo({Key key}) : super(key: key);

  @override
  _BottomAppbarDemoState createState() => _BottomAppbarDemoState();
}

class _BottomAppbarDemoState extends State<BottomAppbarDemo> {
  List<Widget> _eachView; // 创建视图数组
  int _index = 0;

  @override
  void initState() {
    _eachView = List();
    _eachView..add(EachView('Home'))..add(EachView('Me'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachView[_index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
            return EachView('New Page');
          }));
        },
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
              onPressed: () {
                setState(() {
                    _index=0;
                  });
              },
            ),
            // SizedBox(),
            IconButton(
              icon: Icon(Icons.airline_seat_flat),
              color: Colors.white,
              onPressed: () {
                setState(() {
                    _index=1;
                 });
              },
            )
          ],
        ),
      ),
    );
  }
}