import 'dart:io';

abstract class Shape {
  String? _color;
  double? _area;
  double? r;
  double? height;
  double? width;

  void setting() {
    print('Enter the color:');
    _color = stdin.readLineSync();

    print('Enter the radius:');
    r = double.parse(stdin.readLineSync()!);
    print('Enter the height:');
    height = double.parse(stdin.readLineSync()!);
    print('Enter the width:');
    width = double.parse(stdin.readLineSync()!);
  }

  void getting() {
    print('Color: $_color');
    print('Area: $_area');
    print('Radius: $r');
    print('Height: $height');
    print('Width: $width');
  }

  void calculateArea();
  void display();
}

class Circle extends Shape {
  @override
  void calculateArea() {
    _area = 3.14 * r! * r!;
  }

  @override
  void display() {
    print('Circle:');
    getting();
  }
}

class Rectangle extends Shape {
  @override
  void calculateArea() {
    _area = width! * height!;
  }

  @override
  void display() {
    print('Rectangle:');
    getting();
  }
}

void main() {
  List<Shape> shapes = [];

  Circle circle = Circle();
  print("Circle:");
  circle.setting();
  circle.calculateArea();
  shapes.add(circle);

  Rectangle rectangle = Rectangle();
  print("\nRectangle:");
  rectangle.setting();
  rectangle.calculateArea();
  shapes.add(rectangle);

  print("\nDisplaying Shapes:");
  for (Shape shape in shapes) {
    shape.display();
  }
}
