import 'package:flutter/material.dart';
import './demo/listview_demo.dart';

void main() => runApp(App());

// 不需要修改数据的继承 StatelessWidge
// 需要修改数据的继承 StatefulWidge
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      //去除右上角debug条幅
      debugShowCheckedModeBanner: false,
      home: Home(),
      //设置主题
      theme: ThemeData(
        //主要颜色
        primarySwatch: Colors.yellow,
      ),
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[100],
      //app标题栏
      appBar: AppBar(
        title: Text('Practice'),
        //设置阴影大小，默认4.0
        elevation: 0.0,
      ),
      body: null,
    );
  }
}