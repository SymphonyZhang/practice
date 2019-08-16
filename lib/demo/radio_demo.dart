import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  RadioDemoState createState() => RadioDemoState();
}

class RadioDemoState extends State<RadioDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GG'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

              ],
            ),
          ],
        ),
      ),
    );
  }
}
