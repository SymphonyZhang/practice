import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
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
    );
  }
}