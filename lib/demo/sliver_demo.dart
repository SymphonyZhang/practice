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
          //Sliver工具栏
          SliverAppBar(
            //title: Text('Practice'),
            //是否固定工具栏
            //pinned: true,
            //下拉时是否立马显示工具栏
            floating: true,
            //工具栏伸展高度
            expandedHeight: 178.0,
            //设置伸展高度为弹性空间
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Practice'.toUpperCase(),
                style: TextStyle(
                  fontSize: 15.0,
                  //字间距
                  letterSpacing: 3.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              background: Image.network(
                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564726910634&di=addc6ac5708a43f1bbbc241a15c88ee3&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201504%2F23%2F20150423H5920_HZSMk.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          //内容显示在安全区域
          SliverSafeArea(
            //添加内边距
            sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SliverListDemo(),
            ),
          ),
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Sliver 构建GridView
    return SliverList(
      //实现GridView里的item
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 32.0),
            child: Material(
              borderRadius: BorderRadius.circular(12.0),
              elevation: 14.0,
              shadowColor: Colors.grey.withOpacity(0.5),
              child: Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.network(
                      posts[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 32.0,
                    left: 32.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          posts[index].title,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          posts[index].author,
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        //设置items的个数
        childCount: posts.length,
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Sliver 构建GridView
    return SliverGrid(
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
    );
  }
}
