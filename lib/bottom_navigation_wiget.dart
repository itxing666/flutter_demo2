import 'package:flutter/material.dart';
import 'package:flutter_demo2/airplay_screen.dart';
import 'package:flutter_demo2/email_screen.dart';
import 'package:flutter_demo2/home_screen.dart';
import 'package:flutter_demo2/pages_screen.dart';

class BottomNavigationWiget extends StatefulWidget {
  @override
  _BottomNavigationWigetState createState() => _BottomNavigationWigetState();
}

class _BottomNavigationWigetState extends State<BottomNavigationWiget> {
  final _BottomNavigationColor = Colors.blue;

  int currentIndex = 0;
  final List<Widget> tabBodies = [
    HomeScreen(),
    EmailScreen(),
    PagesScreen(),
    AirPlayScreen()

  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              // color: _BottomNavigationColor,
            ),
            title: Text(
              '首页',
              style: TextStyle(
                // color: _BottomNavigationColor
              ),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              // color: _BottomNavigationColor,
            ),
            title: Text(
              '消息',
              style: TextStyle(
                // color: _BottomNavigationColor
              ),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pages,
              // color: _BottomNavigationColor,
            ),
            title: Text(
              '页面',
              style: TextStyle(
                // color: _BottomNavigationColor
              ),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.airplay,
              // color: _BottomNavigationColor,
            ),
            title: Text(
              'Airplay',
              style: TextStyle(
                // color: _BottomNavigationColor
              ),
            )
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        }
      ),
      body: tabBodies[currentIndex],
    );
  }
}