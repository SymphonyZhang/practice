import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ContainerBoxDecorationDemo();
  }
}

class ContainerBoxDecorationDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      //color: Colors.grey[100],
      //添加背景图像
      decoration: BoxDecoration(
        image: DecorationImage(
          //图像资源
          image: NetworkImage(
            'http://b-ssl.duitang.com/uploads/item/201708/07/20170807003521_2tEPY.jpeg',
          ),
          //图像位置
          alignment:Alignment.topCenter,
          //设置重复模式
          //repeat: ImageRepeat.repeat,
          //图像填充模式 cover:图像保持比例覆盖整个容器显示
          fit: BoxFit.cover,
          //设置颜色滤镜 color:滤镜颜色，blendmode滤镜混合模式
          colorFilter: ColorFilter.mode(Colors.indigoAccent[400], BlendMode.hardLight),
        ),
      ),
      child: Row(
        //主轴居中对齐
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.pool,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            //详细设置容器样式，如果有decoration则，在decoration上一层不能出现color，会冲突
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              //添加统一描边
              border: Border.all(
                //设置全部描边
                //描边的颜色
                color: Colors.indigoAccent[100],
                //描边的粗细
                width: 3.0,
                //描边的样式，实心的
                style: BorderStyle.solid,
              ),

              //可以分开设置描边
              /*border: Border(
                top: BorderSide(
                  //描边的颜色
                  color: Colors.indigoAccent[100],
                  //描边的粗细
                  width: 3.0,
                  //描边的样式，实心的
                  style: BorderStyle.solid,
                ),
                bottom: BorderSide(
                  //描边的颜色
                  color: Colors.indigoAccent[100],
                  //描边的粗细
                  width: 3.0,
                  //描边的样式，实心的
                  style: BorderStyle.solid,
                ),
              ),*/

              //设置圆角全局
              //borderRadius: BorderRadius.circular(16.0),
              //分别设置圆角
              /*borderRadius: BorderRadius.only(
                topLeft: Radius.circular(64.0),
                bottomLeft: Radius.circular(64.0),
              ),*/
              //阴影
              boxShadow: [
                BoxShadow(
                  //偏移
                  offset: Offset(0.0, 16.0),
                  //设置阴影颜色
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  //设置阴影模糊程度，值越大，越模糊
                  blurRadius: 25.0,
                  //设置阴影扩散程度  正数：扩大阴影面积 负数：缩小阴影面积
                  spreadRadius: -9.0,
                ),
              ],
              //形状   ps:在圆形的盒子外面不能使用圆角效果 BoxShape.circle 跟BorderRadius冲突
              //rectangle矩形  circle圆形
              shape: BoxShape.circle,
              //渐变
              // RadialGradient ：镜像渐变
              /*gradient: RadialGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ],
              ),*/
              // LinearGradient ：线性渐变
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ],
                //设置渐变开始位置
                begin: Alignment.topCenter,
                //设置渐变结束位置
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//行内多样式文字
class RichTextDemo extends StatelessWidget {
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
class TextDemo extends StatelessWidget {
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
