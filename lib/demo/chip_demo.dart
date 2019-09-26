import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  ChipDemoState createState() => ChipDemoState();
}

class ChipDemoState extends State<ChipDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipDemo'),
        elevation: 0.0,
      ),
      body:Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Chip(
                  label: Text('Life'),
                ),
                SizedBox(width: 8.0,),
                Chip(
                  label: Text('Sunset'),
                  backgroundColor: Colors.orange,
                ),
                SizedBox(width: 8.0,),
                Chip(
                  label: Text('Wanghao'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text('仙'),
                  ),
                ),
                SizedBox(width: 8.0,),
                Chip(
                  label: Text('Zhang'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text('张'),
                  ),
                ),
                SizedBox(width: 8.0,),
                Chip(
                  label: Text('Wanghao'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage('http://b-ssl.duitang.com/uploads/item/201708/07/20170807003521_2tEPY.jpeg'),
                    //child: Text('仙'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
