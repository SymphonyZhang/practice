import 'package:flutter/material.dart';

class TestDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestDemo'),
        elevation: 0.0,
      ),
      body: TestDemoHome(),
    );
  }
}

class TestDemoHome extends StatefulWidget {
  @override
  _TestDemoHomeState createState() => _TestDemoHomeState();
}

class _TestDemoHomeState extends State<TestDemoHome> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Chip(
          label: Text('hello'),
        ),
        ActionChip(
          key: Key('actionChip'),
          label: Text('$count',key: Key('actionChipLabeText'),),
          onPressed: (){
            setState(() {
              count++;
            });
          },
        )
      ],
    );
  }
}

class SymphonyTestDemo{
  static greet(String name){
    return 'hello $name ~~';
  }
}