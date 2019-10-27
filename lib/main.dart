import 'package:flutter/material.dart';
import 'package:flutter_demo2/bottom_appbar_demo.dart';
import 'package:flutter_demo2/bottom_navigation_wiget.dart';
import 'package:flutter_demo2/expansionTileDemo.dart';
import 'package:flutter_demo2/expansion_panel_list.dart';
import 'package:flutter_demo2/first_page.dart';
import 'package:flutter_demo2/frosted_glass_demo.dart';
import 'package:flutter_demo2/keep_alive_demo.dart';
import 'package:flutter_demo2/search_bar_demo.dart';
import 'package:flutter_demo2/wrap_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: ExpansionPanelListDemo(),
    );
  }
}

