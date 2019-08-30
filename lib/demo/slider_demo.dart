import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  SliderDemoState createState() => SliderDemoState();
}

class SliderDemoState extends State<SliderDemo> {
  double _sliderItemA = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliderDemo'),
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
                Slider(
                  value: _sliderItemA,
                  onChanged: (value){
                    setState(() {
                      _sliderItemA = value;
                    });
                  },
                  activeColor: Theme.of(context).accentColor,//滑动后和滑块的颜色
                  inactiveColor: Theme.of(context).accentColor.withOpacity(0.3),//未滑动部分的颜色
                  min: 0.0,//最小值
                  max: 10.0,// 最大值
                  divisions: 10,//分割份数
                  label: '${_sliderItemA.toInt()}',// 标签
                ),
              ],
            ),
            SizedBox(
              height: 16.0,
            ),
            Text('SliderValue: $_sliderItemA'),
          ],
        ),
      ),
    );
  }
}
