import 'package:flutter/material.dart';
import '../model/post.dart';

//sliver 指一小块的可视口
class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          //Sliver 构建GridView
          SliverGrid(
            //实现GridView里的item
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  child: Image.network(
                    posts[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                );
              },
              //设置items的个数
              childCount: posts.length,
            ),
            //设置网格属性
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              //控制item显示比例
              childAspectRatio: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}
