import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavigationBarDemoState();
  }
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo>{

  int _currentIndex = 0;
  void _onTapHandler(int index){
    setState((){
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      //默认激活的item的下标
        currentIndex: _currentIndex,
        //切换激活状态
        onTap: _onTapHandler,
        //设置导航栏类型
        type: BottomNavigationBarType.fixed,
        //设置选中(激活)状态的颜色
        fixedColor: Colors.black,
        items: [
          //添加底部导航栏的item
          BottomNavigationBarItem(
            //添加小图标
            icon: Icon(Icons.explore),
            //添加标题
            title: Text('Explore'),
          ),
          BottomNavigationBarItem(
            //添加小图标
            icon: Icon(Icons.history),
            //添加标题
            title: Text('history'),
          ),
          BottomNavigationBarItem(
            //添加小图标
            icon: Icon(Icons.list),
            //添加标题
            title: Text('List'),
          ),
          BottomNavigationBarItem(
            //添加小图标
            icon: Icon(Icons.person),
            //添加标题
            title: Text('My'),
          ),
        ]);
  }
}