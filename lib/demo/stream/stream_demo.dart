import 'package:flutter/material.dart';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamDemo'),
        elevation: 0.0,
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  StreamDemoHomeState createState() => StreamDemoHomeState();
}

class StreamDemoHomeState extends State<StreamDemoHome> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
