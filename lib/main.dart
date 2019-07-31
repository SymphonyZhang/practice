import 'package:flutter/material.dart';
import './model/post.dart';

void main() => runApp(App());

// 不需要修改数据的继承 StatelessWidge
// 需要修改数据的继承 StatefulWidge
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
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
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(
            posts[index].imageUrl,
          ),
          //设置一个SizedBox 用于间隔
          SizedBox(
            height: 16.0,
          ),
          Text(
            posts[index].title,
            //设置文字样式
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            //设置文字样式
            style: Theme.of(context).textTheme.subhead,
          ),
          //设置一个SizedBox 用于间隔
          SizedBox(
            height: 16.0,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Practice'),
        //设置阴影大小，默认4.0
        elevation: 0.0,
      ),
      body: ListView.builder(
        //获取长度
        itemCount: posts.length,
        //用_listItemBuilder方法建立list
        itemBuilder: _listItemBuilder,
      ),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        'Hello',
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }
}
