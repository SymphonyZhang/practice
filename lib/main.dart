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
        //添加Drawer(抽屉)
        //左边显示用drawer，右边显示用用endDrawer
        drawer: Drawer(
          child: ListView(
            //内边距为0
            padding: EdgeInsets.zero,
            children: <Widget>[
              //显示用户相关的头部
              UserAccountsDrawerHeader(
                //用户名
                accountName: Text(
                  'Symphony',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                //密码
                accountEmail: Text(
                  'symphony@practice.net',
                ),
                //头像，用圆形蒙版
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "http://cdn.duitang.com/uploads/item/201407/24/20140724190906_MCkXs.thumb.700_0.jpeg"),
                ),
                //给头部添加背景
                decoration: BoxDecoration(
                    color: Colors.yellow[400],
                    image: DecorationImage(
                      image: NetworkImage(
                          'http://b-ssl.duitang.com/uploads/item/201610/22/20161022115218_Xe4kd.jpeg'),
                      //填充效果（填满）
                      fit: BoxFit.cover,
                      //添加颜色滤镜 .withOpacity(0.6)[颜色的不透明度为0.6]  mode(color，blendmode) color为颜色，blendmode为混合模式
                      colorFilter: ColorFilter.mode(Colors.yellow[400].withOpacity(0.6), BlendMode.hardLight),
                    )),
              ),
              //添加选项
              ListTile(
                //在文字的左边显示图标用leading
                //文字
                title: Text(
                  'Message',
                  textAlign: TextAlign.right,
                ),
                //在文字后方添加小图标
                trailing: Icon(
                  Icons.message,
                  color: Colors.black12,
                  size: 22.0,
                ),
                //添加点击后行为
                //点击后Drawer自动回收隐藏
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                //在文字的左边显示图标用leading
                //文字
                title: Text(
                  'Favorite',
                  textAlign: TextAlign.right,
                ),
                //在文字后方添加小图标
                trailing: Icon(
                  Icons.favorite,
                  color: Colors.black12,
                  size: 22.0,
                ),
                //添加点击后行为
                //点击后Drawer自动回收隐藏
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                //在文字的左边显示图标用leading
                //文字
                title: Text(
                  'Settings',
                  textAlign: TextAlign.right,
                ),
                //在文字后方添加小图标
                trailing: Icon(
                  Icons.settings,
                  color: Colors.black12,
                  size: 22.0,
                ),
                //添加点击后行为
                //点击后Drawer自动回收隐藏
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
