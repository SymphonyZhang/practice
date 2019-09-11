import 'package:flutter/material.dart';

class SimpleDialogDemo extends StatefulWidget {
  @override
  SimpleDialogDemoState createState() => SimpleDialogDemoState();
}

class SimpleDialogDemoState extends State<SimpleDialogDemo> {

  _openSimpleDialog() {
    showDialog(
        context: context,
        builder:(BuildContext context){
          return SimpleDialog(
            title: Text('SimpleDialog'),
            children: <Widget>[
              SimpleDialogOption(
                child: Text('Option A'),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
              SimpleDialogOption(
                child: Text('Option B'),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
              SimpleDialogOption(
                child: Text('Option C'),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
            ],
          );
        }
    );
  }

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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.format_list_numbered),
        onPressed: _openSimpleDialog,
      ),
    );
  }
}
