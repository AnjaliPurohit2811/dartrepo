import 'dart:io';

class Calculator {
  double divide(double numerator, double denominator) {
    if (denominator == 0) {
      throw IntegerDivisionByZeroException();
    }
    return numerator / denominator;
  }
}

void main() {
  Calculator calculator = Calculator();

  try {
    print("Enter the numerator:");
    double numerator = double.parse(stdin.readLineSync()!);

    print("Enter the denominator:");
    double denominator = double.parse(stdin.readLineSync()!);

    double result = calculator.divide(numerator, denominator);
    print("Result: $result");
  } on IntegerDivisionByZeroException {
    print("Error: Cannot divide by zero.");
  } catch (e) {
    print("An unexpected error occurred: $e");
  }
}
