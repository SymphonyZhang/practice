import 'package:flutter/material.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/listview_demo.dart';
import './demo/basic_demo.dart';
import './demo/layout_demo.dart';
import './demo/view_demo.dart';
import './demo/sliver_demo.dart';
import './demo/Navigator_demo.dart';
import './demo/form_demo.dart';
import './demo/material_components.dart';
import 'package:practice/demo/state/state_management_demo.dart';

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
      //home: NavigatorDemo(),
      initialRoute: '/state-management',
      //预先设置带名字的路由(页面)，在适当时可以通过路由名字操作页面显示和移除  例如Navigator_demo中About按钮
      //map类型 (名字:值[要打开的视图])
      routes: {
        //定义路由名字时 " /about "," / "表示路由的根或者叫初始路由，（如果有home 属性，则指向home属性引用的路由，没有home属性则使用" initialRoute: '/' "设置初始路由。）
        '/':(context) => Home(),
        '/about':(context) => Page(title: 'About',),
        '/form':(context) => FormDemo(),
        '/mdc':(context) => MaterialComponents(),
        '/state-management':(context) => StateManagementDemo(),
      },
      //设置主题
      theme: ThemeData(
        //主要颜色
        primarySwatch: Colors.yellow,
        //设置主题的高亮颜色
        //点击时立马显示的颜色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        //设置水波纹颜色
        splashColor: Colors.white70,
        accentColor: Color.fromRGBO(3, 54, 255, 1.0),
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
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        //app标题栏
        appBar: AppBar(
          //添加标题栏左边的menu button ，跟Drawer自动生成的图标有冲突，如果需要Drawer则把这块注释掉
          /* leading: IconButton(
            //图标
            icon: Icon(Icons.menu),
            //描述
            tooltip: 'Navigation',
            //点击事件
            onPressed: () => debugPrint('This is Navigation bar menu'),
          ),*/
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
              Tab(
                icon: Icon(Icons.view_quilt),
              ),
            ],
          ),
        ),
        //用TabBarView部件添加tab 对应的视图view显示
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
            SliverDemo(),
          ],
        ),
        //添加Drawer(抽屉)
        //左边显示用drawer，右边显示用用endDrawer
        drawer: DrawerDemo(),
        //添加底部导航栏
        //这里选中的颜色跟app主题颜色一致 (primarySwatch: Colors.yellow)
        //如果底部导航栏中item个数大于3个，导航栏类型会发生变化导致显示异常.需要用type重新设置导航栏类型，解决异常显示
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
