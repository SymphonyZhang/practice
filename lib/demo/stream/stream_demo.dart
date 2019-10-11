import 'package:flutter/material.dart';
import 'dart:async';

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

  StreamSubscription _streamSubscription;
  StreamController<String> _streamDemo;

  @override
  void initState() {
    super.initState();

    print('Create a stream.');
    //Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    _streamDemo = StreamController<String>();

    print('Start listening on a stream.');
    _streamSubscription = _streamDemo.stream.listen(onData,onError: onError,onDone: onDone);
    print('Initialize completed.');
  }

  @override
  void dispose() {
    _streamDemo.close();
    super.dispose();
  }

  void onDone(){
    print('Done !');
  }

  void onError(error){
    print('$error');
  }

  void onData(String data){
    print('$data');
  }

  void _pauseStream(){
    print('Pause subscription');
    _streamSubscription.pause();
  }

  void _resumeStream(){
    print('Resume subscription');
    _streamSubscription.resume();
  }

  void _cancelStream(){
    print('Cancel subscription');
    _streamSubscription.cancel();
  }

  void _addDataToStream() async{
    print('Add data to stream.');
    String data = await fetchData();
    _streamDemo.add(data);
  }

  Future<String> fetchData() async{
    await Future.delayed(Duration(seconds: 5));
    //throw 'Something happened ';
    return 'Hello ~';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
       child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           FlatButton(
             child: Text('Add'),
             onPressed: _addDataToStream,
           ),
           FlatButton(
             child: Text('Pause'),
             onPressed: _pauseStream,
           ),
           FlatButton(
             child: Text('Resume'),
             onPressed: _resumeStream,
           ),
           FlatButton(
             child: Text('Cancel'),
             onPressed: _cancelStream,
           ),
         ],
       ),
      ),
    );
  }
}
