import 'package:flutter/material.dart';

class SnackBarDemo extends StatefulWidget {
  @override
  SnackBarDemoState createState() => SnackBarDemoState();
}

class SnackBarDemoState extends State<SnackBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBarDemo'),
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
                SnackBarButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SnackBarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text('Open Snack Bar'),
      onPressed: (){
        Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('Processing...'),
              action: SnackBarAction(
                label: 'OK',
                onPressed: (){

                },
              ),
            )
        );
      },
    );
  }
}
