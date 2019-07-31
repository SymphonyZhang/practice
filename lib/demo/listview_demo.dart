import 'package:flutter/material.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget{
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
    return ListView.builder(
      //获取长度
      itemCount: posts.length,
      //用_listItemBuilder方法建立list
      itemBuilder: _listItemBuilder,
    );
  }
}