import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      //横排
      //主轴：在Row中主轴是横向的，
      //交叉轴：crossAxis 在Row中 主轴是纵向的
      /*child: Row(
        //设置部件在主轴上的对齐方式
        //MainAxisAlignment.spaceAround:剩余空间分布在小部件周围
        //MainAxisAlignment.spaceBetween:剩余空间平均分布在小部件之间
        //MainAxisAlignment.spaceEvenly:剩余空间平均分布在小部件之间包括前后两个小部件之外也有空间
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //设置部件在交叉轴上的对齐方式
        //CrossAxisAlignment.stretch:拉伸小部件
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          IconBadge(Icons.pool),
          IconBadge(Icons.beach_access,size: 64.0,),
          IconBadge(Icons.airplanemode_active),
        ],
      ),*/
      //竖排
      //主轴： 在Column 中，主轴是纵向的
      //交叉轴：crossAxis 在Column中 主轴是横向的
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //可以强制它的子部件有一个固定的尺寸，如果不设置尺寸则它的大小就是他的子部件的大小
          SizedBox(
            width: 200.0,
            height: 300.0,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Icon(
                Icons.ac_unit,
                color: Colors.white,
                size: 32.0,
              ),
            ),
          ),
          //不设置他的child小部件，可以当作控件间的间距
          SizedBox(
            height: 32.0,
          ),
          SizedBox(
            width: 100.0,
            height: 100.0,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Icon(
                Icons.brightness_2,
                color: Colors.white,
                size: 32.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(
    this.icon, {
    this.size = 32.0,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      width: size + 60.0,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
