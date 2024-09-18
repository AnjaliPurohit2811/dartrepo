import 'dart:io';

class Rectangle {
  int? _length;
  int? _width;
  Rectangle(this._length, this._width);

  void set() {
    print('enter the value of height=');
    _length = int.parse(stdin.readLineSync()!);
    print('enter the value of width=');
    _width = int.parse(stdin.readLineSync()!);
  }

  void get() {
    print('the value of height is = $_length');
    print('the value of width is = $_width');
  }

  void formula() {
    int area = _length! * _width!;
    print('the area of rectangle is = $area');
  }
}

void main() {
  Rectangle rectangle = Rectangle();
  rectangle.set();
  rectangle.get();
  rectangle.formula();
}
