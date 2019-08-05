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

  //文本编辑控制器
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    //设置文本框默认值
    //textEditingController.text="hi";
    //设置文本框监听器
    textEditingController.addListener(
        (){
          debugPrint('input： ${textEditingController.text}');
        }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      //监视文本变化
      /*onChanged: (value) {
        debugPrint('input: $value');
      },*/
      controller: textEditingController,
      //监视键盘上submit按钮
      onSubmitted: (value){
        debugPrint('submit: $value');
      },
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
