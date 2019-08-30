import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  SwitchDemoState createState() => SwitchDemoState();
}

class SwitchDemoState extends State<SwitchDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}
