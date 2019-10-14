import 'package:flutter_test/flutter_test.dart';
import 'package:practice/demo/test/test_demo.dart';

void main() {
  test('should return hello + something.',(){
    var string = SymphonyTestDemo.greet('Symphony');
    expect(string, 'hello Symphony');
  });
}