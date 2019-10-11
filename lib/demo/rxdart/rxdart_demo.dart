import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class RxDartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RxDartDemo'),
        elevation: 0.0,
      ),
      body: RxDartDemoHome(),
    );
  }
}

class RxDartDemoHome extends StatefulWidget {
  @override
  _RxDartDemoHomeState createState() => _RxDartDemoHomeState();
}

class _RxDartDemoHomeState extends State<RxDartDemoHome> {

  @override
  void initState() {
    super.initState();

    //Observable<String> _observable = Observable(Stream.fromIterable(['hello','你好']));
    //Observable<String> _observable = Observable.fromFuture(Future.value('Hello ~'));
    //Observable<String> _observable = Observable.fromIterable(['hello','你好']);
    //Observable<String> _observable = Observable.just('Hello ~');
    //Observable<String> _observable = Observable.periodic(Duration(seconds: 3),(x) => x.toString());

    //_observable.listen(print);

    //PublishSubject<String> _subject = PublishSubject<String>();
    BehaviorSubject<String> _subject = BehaviorSubject<String>();

    _subject.add('hello');
    _subject.add('hola');
    _subject.listen((data) => print('Listen 1 : $data'));
    _subject.listen((data) => print('Listen 2 : ${data.toUpperCase()}'));

    _subject.close();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}