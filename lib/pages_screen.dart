import 'package:flutter/material.dart';

class PagesScreen extends StatefulWidget {
  @override
  _PagesScreenState createState() => _PagesScreenState();
}

class _PagesScreenState extends State<PagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pages'),
      ),
      body: Center(
        child: Text('Pages'),
      ),
    );
  }
}