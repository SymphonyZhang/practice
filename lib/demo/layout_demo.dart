import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      //横排
      child: Row(
        children: <Widget>[
          IconBadge(Icons.pool),
          IconBadge(Icons.beach_access),
          IconBadge(Icons.airplanemode_active),
        ],
      ),
      /*//竖排
        child: Column(
        children: <Widget>[
          IconBadge(Icons.pool),
          IconBadge(Icons.beach_access),
          IconBadge(Icons.airplanemode_active),
        ],
      ),*/
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(
      this.icon, {
        this.size = 32.0,
      });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      width: size+60.0,
      height: size+60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
