import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageViewBuilderDemo();
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        //SizedBox的尺寸会占满所有可用空间
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(posts[index].author),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      //页面数量
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

//PageView 页面视图
class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      //拖动超过50%则下一页，少于50%则保持原来页面,true开启，false关闭
      //pageSnapping: false,
      //子部件顺序倒置，true开启，false关闭
      //reverse: true,
      //滚动方向 Axis.vertical垂直滚动 Axis.horizontal水平滚动(默认)
      //scrollDirection: Axis.vertical,
      //页面的可视页面在中间时会触发回调
      onPageChanged: (currentPage) => debugPrint('Page $currentPage'),
      controller: PageController(
        //初始显示页面的下标
        initialPage: 1,
        //默认pageview会记录下用户滚动到哪个页面  如果要取消则设置为false
        keepPage: false,
        //页面占用可视窗的比例，默认1.0,占用比例是根据滚动方向决定的
        viewportFraction: 0.85,
      ),
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.brown[900],
          child: Text(
            'One',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.grey[900],
          child: Text(
            'Two',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blueGrey[900],
          child: Text(
            'Three',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
