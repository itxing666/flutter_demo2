import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedGlassDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child:Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1545738629147&di=22e12a65bbc6c4123ae5596e24dbc5d3&imgtype=0&src=http%3A%2F%2Fpic30.photophoto.cn%2F20140309%2F0034034413812339_b.jpg')
          ),
          Center(
            child: ClipRect(  //裁切长方形
              child: BackdropFilter(   //背景滤镜器
                filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0), //图片模糊过滤，横向竖向都设置5.0
                child: Opacity( //透明控件
                  opacity: 0.5,
                  child: Container(// 容器组件
                    width: 500.0,
                    height: 900.0,
                    decoration: BoxDecoration(color:Colors.grey.shade200), //盒子装饰器，进行装饰，设置颜色为灰色
                    child: Center(
                      child: Text(
                        'itxing',
                        style: Theme.of(context).textTheme.display3, //设置比较酷炫的字体
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],

      ),
    );
  }
}