import 'package:flutter/material.dart';

class ViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageViewDemo();
  }
}

//PageView 页面视图
class PageViewDemo extends StatelessWidget{
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
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.brown[900],
          child: Text('One',style: TextStyle(fontSize: 32.0,color: Colors.white),),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.grey[900],
          child: Text('Two',style: TextStyle(fontSize: 32.0,color: Colors.white),),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blueGrey[900],
          child: Text('Three',style: TextStyle(fontSize: 32.0,color: Colors.white),),
        ),
      ],
    );
  }
}