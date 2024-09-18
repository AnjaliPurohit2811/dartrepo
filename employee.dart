import 'dart:io';

class Employee {
  String? _name;
  int? _salary;
  String? _designation;

  Employee(this._name, this._salary, this._designation);

  void set() {
    print('enter the name = ');
    _name = stdin.readLineSync()!;
    print('enter the salary = ');
    _salary = int.parse(stdin.readLineSync()!);
    print('enter the designation = ');
    _designation = stdin.readLineSync()!;
  }

  void get() {
    print('name = ${_name}');
    print('salary = ${_salary}');
    print('designation = ${_designation}');
  }
}

void main() {
  Employee employee = Employee();
  employee.set();
  employee.get();
}
