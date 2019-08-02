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
        child: ThemeDemo(),
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
