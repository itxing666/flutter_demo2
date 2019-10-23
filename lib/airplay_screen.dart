import 'package:flutter/material.dart';

class AirPlayScreen extends StatefulWidget {
  @override
  _AirPlayScreenState createState() => _AirPlayScreenState();
}

class _AirPlayScreenState extends State<AirPlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('airplay'),
      ),
      body: Center(
        child: Text('airplay'),
      ),
    );
  }
}