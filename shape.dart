import 'dart:io';

class Shape {
  String? _color;
  double? _area;
  double? r;
  double? height;
  double? width;

  void setting() {
    print('enter the colour = ');
    _color = stdin.readLineSync();

    print('enter the r = ');
    r = double.parse(stdin.readLineSync()!);
    print('enter the height = ');
    height = double.parse(stdin.readLineSync()!);
    print('enter the width = ');
    width = double.parse(stdin.readLineSync()!);
  }

  void getting() {
    print('the color is = $_color');
    print('the area is = $_area');
    print('the radius is = $r');
    print('the height is = $height');
    print('the width is = $width');
  }
}

class Circle extends Shape {
  void calculateArea() {
    _area = 3.14 * r! * r!;
  }
}

class Rectangle extends Shape {
  void calculateArea() {
    _area = width! * height!;
  }
}

void main() {
  Circle circle = Circle();
  print("Circle:");
  circle.setting();
  circle.calculateArea();
  circle.getting();

  Rectangle rectangle = Rectangle();
  print("\nRectangle:");
  rectangle.setting();
  rectangle.calculateArea();
  rectangle.getting();
}
