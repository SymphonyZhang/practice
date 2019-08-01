import 'package:flutter/material.dart';

class ViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageViewDemo();
  }
}

//PageView 页面视图
class PageViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.brown[900],
          child: Text('One',style: TextStyle(fontSize: 32.0,color: Colors.white),),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.grey[900],
          child: Text('Two',style: TextStyle(fontSize: 32.0,color: Colors.white),),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blueGrey[900],
          child: Text('Three',style: TextStyle(fontSize: 32.0,color: Colors.white),),
        ),
      ],
    );
  }
}