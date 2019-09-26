import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  ChipDemoState createState() => ChipDemoState();
}

class ChipDemoState extends State<ChipDemo> {

  List<String> _tags = [
    'Apple',
    'Banana',
    'Lemon',
  ];

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
            Wrap(//如果一行超过会另起一行
              spacing: 8.0,//小部件之间的距离
              runSpacing: 8.0,//行与行之间的间隔
              children: <Widget>[
                Chip(
                  label: Text('Life'),
                ),
                Chip(
                  label: Text('Sunset'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('Wanghao'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text('仙'),
                  ),
                ),
                Chip(
                  label: Text('Zhang'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text('张'),
                  ),
                ),
                Chip(
                  label: Text('Wanghao'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage('http://b-ssl.duitang.com/uploads/item/201708/07/20170807003521_2tEPY.jpeg'),
                    //child: Text('仙'),
                  ),
                ),
                Chip(
                  label: Text('City'),
                  onDeleted: (){},
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.redAccent,
                  deleteButtonTooltipMessage:'Remove this tag',
                ),
                Divider(//分割线
                  color: Colors.grey,
                  height: 32.0,
                  //indent: 32.0,
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag){
                    return Chip(
                      label: Text(tag),
                      onDeleted: (){
                        setState(() {
                          _tags.remove(tag);
                        });
                      },
                    );
                  }).toList(),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.restore),
          onPressed: (){
            setState(() {
              _tags = [
                'Apple',
                'Banana',
                'Lemon',
              ];
            });
          }),
    );
  }
}
