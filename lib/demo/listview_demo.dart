import 'package:flutter/material.dart';
import '../model/post.dart';
import 'post_show.dart';

class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  posts[index].imageUrl,
                  fit: BoxFit.cover,
                ),
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
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              //溅墨效果
              child: InkWell(
                //扩散颜色
                splashColor: Colors.white.withOpacity(0.3),
                //点击颜色
                highlightColor: Colors.white.withOpacity(0.1),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PostShow(
                        post: posts[index],
                      ),
                    ),
                  );
                },
              ),
            ),
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
