import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //Stack 中可以放置一摞小部件 默认是左上角对齐且越晚写的小部件越在最上层 [层叠布局]
          Stack(
            //设置Stack中的小部件的对齐方式
            alignment: Alignment.topLeft,
            children: <Widget>[
              //可以强制它的子部件有一个固定的尺寸，如果不设置尺寸则它的大小就是他的子部件的大小
              SizedBox(
                width: 200.0,
                height: 300.0,
                child: Container(
                  //设置对齐方式通过alignment设置的坐标点 (0.0,0.0)为中心点
                  //也可以调用预设好的变量 Alignment.topLeft Alignment.topCenter 等等
                  alignment: Alignment(0.0, -0.9),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0),
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
                    //borderRadius: BorderRadius.circular(8.0),
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Color.fromRGBO(7, 102, 255, 1.0),
                        Color.fromRGBO(3, 28, 255, 1.0),
                      ],
                    ),
                  ),
                  child: Icon(
                    Icons.brightness_2,
                    color: Colors.white,
                    size: 32.0,
                  ),
                ),
              ),
              //Positioned 给Stack中的子部件定位(相对Stack的位置)
              Positioned(
                right: 20.0,
                top: 20.0,
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                  size: 16.0,
                ),
              ),
              Positioned(
                right: 40.0,
                top: 60.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 18.0),
              ),
              Positioned(
                right: 20.0,
                top: 120.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 20.0),
              ),
              Positioned(
                right: 70.0,
                top: 180.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
              ),
              Positioned(
                right: 30.0,
                top: 230.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 18.0),
              ),
              Positioned(
                right: 90.0,
                bottom: 20.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
              ),
              Positioned(
                right: 4.0,
                bottom: -4.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
              ),
            ],
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
