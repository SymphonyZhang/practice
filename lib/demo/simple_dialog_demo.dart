import 'package:flutter/material.dart';

class SimpleDialogDemo extends StatefulWidget {
  @override
  SimpleDialogDemoState createState() => SimpleDialogDemoState();
}

class SimpleDialogDemoState extends State<SimpleDialogDemo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleDialogDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(

        ),
      ),
    );
  }
}
