import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        //使用ThemeData则覆盖之前所有主题设置，使用Theme.of(context).copyWith则只覆盖修改的这部分设置
        data: Theme.of(context).copyWith(
          primaryColor:Colors.black,
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFieldDemo(),
            ],
          ),
        ),
      ),
    );
  }
}


//输入文本框
class TextFieldDemo extends StatefulWidget {
  @override
  TextFieldDemoState createState() => TextFieldDemoState();
}

class TextFieldDemoState extends State<TextFieldDemo> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        icon:Icon(Icons.subject),
        labelText: 'Title',
        hintText:'Enter the post title.',
        //默认状态下，去除输入框下边
        //border: InputBorder.none,
        //在四周添加统一的边框
        //border: OutlineInputBorder(),
        //带背景颜色风格
        /*filled: true,
        fillColor: Colors.pink[200],*/
      ),
    );
  }
}



class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}
