import 'package:flutter/material.dart';

class ToolTipDemo extends StatelessWidget {
  const ToolTipDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'tool tips demo'
        ),
      ),
      body: Center(
        child: Tooltip(
          message: '不要碰我',
          child: Icon(Icons.all_inclusive),
        ),
      )
    );
  }
}