import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      //横排
      //主轴：在Row中主轴是横向的，
      child: Row(
        //设置部件在主轴上的对齐方式
        //MainAxisAlignment.spaceAround:剩余空间分布在小部件周围
        //MainAxisAlignment.spaceBetween:剩余空间平均分布在小部件之间
        //MainAxisAlignment.spaceEvenly:剩余空间平均分布在小部件之间包括前后两个小部件之外也有空间
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconBadge(Icons.pool),
          IconBadge(Icons.beach_access),
          IconBadge(Icons.airplanemode_active),
        ],
      ),
      //竖排
      //主轴： 在Column 中，主轴是纵向的
      /*child: Column(
        //设置部件在主轴上的对齐方式
        //MainAxisAlignment.spaceAround:剩余空间分布在小部件周围
        //MainAxisAlignment.spaceBetween:剩余空间平均分布在小部件之间
        //MainAxisAlignment.spaceEvenly:剩余空间平均分布在小部件之间包括前后两个小部件之外也有空间
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconBadge(Icons.pool),
          IconBadge(Icons.beach_access),
          IconBadge(Icons.airplanemode_active),
        ],
      ),*/
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
