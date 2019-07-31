import 'package:flutter/material.dart';
import './demo/listview_demo.dart';

void main() => runApp(App());

// 不需要修改数据的继承 StatelessWidge
// 需要修改数据的继承 StatefulWidge
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      //去除右上角debug条幅
      debugShowCheckedModeBanner: false,
      home: Home(),
      //设置主题
      theme: ThemeData(
        //主要颜色
        primarySwatch: Colors.yellow,
        //设置主题的高亮颜色
        //点击时立马显示的颜色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        //设置水波纹颜色
        splashColor: Colors.white70,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //TabBar 定义标签，TabBarView 定义标签内容，TabController 联通TabBar和TabBarView
    return DefaultTabController(
      //设置tab的个数
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        //app标题栏
        appBar: AppBar(
          //添加标题栏左边的menu button
          leading: IconButton(
            //图标
            icon: Icon(Icons.menu),
            //描述
            tooltip: 'Navigation',
            //点击事件
            onPressed: () => debugPrint('This is Navigation bar menu'),
          ),
          title: Text('Practice'),
          //添加标题栏右边的actions button
          actions: <Widget>[
            //在actions中可以添加多个IconButton
            //图标按钮部件
            IconButton(
              //图标
              icon: Icon(Icons.search),
              //描述
              tooltip: 'Search',
              //点击事件
              onPressed: () => debugPrint('Search button had pressed'),
            ),
          ],
          //设置阴影大小，默认4.0
          elevation: 0.0,
          //添加Tab
          bottom: TabBar(
            //修改未被选择的标签颜色
            unselectedLabelColor: Colors.black38,
            //修改标签选中的下划线颜色
            indicatorColor: Colors.black54,
            //修改标签选中的下划线长度
            indicatorSize: TabBarIndicatorSize.label,
            //修改标签选中的下划线粗细
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.local_florist),
              ),
              Tab(
                icon: Icon(Icons.change_history),
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
              ),
            ],
          ),
        ),
        //用TabBarView部件添加tab 对应的视图view显示
        body: TabBarView(
          children: <Widget>[
            Icon(
              Icons.local_florist,
              size: 128.0,
              color: Colors.black12,
            ),
            Icon(
              Icons.change_history,
              size: 128.0,
              color: Colors.black12,
            ),
            Icon(
              Icons.directions_bike,
              size: 128.0,
              color: Colors.black12,
            ),
          ],
        ),
      ),
    );
  }
}
