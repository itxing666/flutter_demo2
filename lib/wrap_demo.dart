import 'package:flutter/material.dart';

// 继承与动态组件
class WrapDemo extends StatefulWidget {
  WrapDemo({Key key}) : super(key: key);

  @override
  _WrapDemoState createState() => _WrapDemoState();
}

class _WrapDemoState extends State<WrapDemo> {
  List<Widget> list;  // 声明一个list数组

  @override
  void initState() {
    list = List<Widget>()..add(buildAddButton());
        super.initState();
      }
      @override
      Widget build(BuildContext context) {
        //得到屏幕的高度和宽度，用来设置Container的宽和高
        final width = MediaQuery.of(context).size.width;
        final height = MediaQuery.of(context).size.height;
        return Scaffold(
          appBar: AppBar(
            title: Text('Wrap 流式布局'),
          ),
          body: Center(
            child: Opacity(
              opacity: 0.8,
              child: Container(
                width: width,
                height: height/2,
                color: Colors.grey,
                child: Wrap(
                  children: list,
                  spacing: 26.0,
                ),
              ),
            ),
          ),
        );
      }

      Widget buildAddButton() {
        return GestureDetector(
          onTap: () {
            if(list.length < 9) {
              setState(() {
                list.insert(list.length - 1, buildPhoto());
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 80.0,
              height: 80.0,
              color: Colors.black54,
              child: Icon(Icons.add),
            ),
          ),
        );
      }

      Widget buildPhoto() {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 80.0,
            height: 80.0,
            color: Colors.amber,
            child: Center(
              child: Text('照片'),
            ),
          ),
        );
      }
}