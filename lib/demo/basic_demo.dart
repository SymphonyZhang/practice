import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichTextDemo();
  }
}

//行内多样式文字
class RichTextDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
        text: 'Practice',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(
            text: '.net',
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

//文字与文字样式
class TextDemo extends StatelessWidget{

  //自定义文字样式
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  final String _author = '李白';
  final String _title = '将进酒';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '《 $_title 》—— $_author。 君不见黄河之水天上来，奔流到海不复回。君不见高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。',
      //文字对齐方式
      textAlign: TextAlign.left,
      //文字样式("_"开头的东西代表这是类里面私有的)
      style: _textStyle,
      //限制文字显示行数
      maxLines: 3,
      //文字溢出处理
      overflow: TextOverflow.ellipsis,
    );
  }
}