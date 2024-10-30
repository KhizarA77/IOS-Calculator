import 'package:flutter/material.dart';

class Screen with ChangeNotifier {
  String _expression = '0';
  String get expression => _expression;
  double num1 = 0;
  double num2 = 0;
  String _operation = '';
  static final operators = ['+', '-', '*', '/'];
  static final digits = RegExp(r'\d');

  void setNum1(String operation) {
    num1 = double.parse(_expression);
    _operation = operation;
    setExpression('0');
  }

  void setNum2() {
    num2 = double.parse(_expression);
  }

  void addExpression(String value) {
    if (_expression == '0') {
      _expression = value.toString();
      if (value == '.') {
        _expression = '0$value';
      }
    } else {
      if (value != '.') {
      _expression += value.toString();
      }
      else {
        if (_expression.contains('.')) {
          return;
        }
        _expression += value.toString();
      }
    }

    notifyListeners();
  }

  void evaluateExpression() {
    switch (_operation) {
      case '+':
        _expression = (num1 + num2).toString();
        break;
      case '-':
        _expression = (num1 - num2).toString();
        break;
      case '×':
        _expression = (num1 * num2).toString();
        break;
      case '÷':
        _expression = (num1 / num2).toString();
        break;
      default:
        break;
    }

    num1 = double.parse(_expression);
    num2 = 0;
    notifyListeners();
  }

  void changeSign() {
    if (_expression[0] == '-') {
      _expression = _expression.substring(1);
    } else {
      _expression = '-$_expression';
    }
    notifyListeners();
  }

  void percentage() {
    try {
      double expression = double.parse(_expression);
      expression /= 100;
      _expression = expression.toString();
    } catch (e) {
      _expression = '0';
    }
    notifyListeners();
  }

  void setExpression(String value) {
    _expression = value;
    notifyListeners();
  }

  void clearExpression() {
    _expression = '0';
    num1 = 0;
    num2 = 0;
    notifyListeners();
  }
}
