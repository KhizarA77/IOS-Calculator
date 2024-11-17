import 'package:flutter/material.dart';
import 'package:ios_calculator/History.dart';
import 'package:provider/provider.dart';

class Screen with ChangeNotifier {
  String _expression = '0';
  String get expression => _expression;
  double _num1 = 0;
  double _num2 = 0;
  String _operation = '';

  double get num1 => _num1;
  double get num2 => _num2;
  String get operation => _operation;

  static final operators = ['+', '-', '*', '/'];
  static final digits = RegExp(r'\d');


  void setNum1(String operation) {
    _num1 = double.parse(_expression);
    _operation = operation;
    setExpression('0');
  }

  void setNum2() {
    _num2 = double.parse(_expression);
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

  void evaluateExpression(BuildContext context) {
    switch (_operation) {
      case '+':
        _expression = (_num1 + _num2).toString();
        break;
      case '-':
        _expression = (_num1 - _num2).toString();
        break;
      case '×':
        _expression = (_num1 * _num2).toString();
        break;
      case '÷':
        _expression = (_num1 / _num2).toString();
        break;
      default:
        break;
    }
    context.read<History>().addCalculation('$num1 $_operation $num2 = $_expression');
    _num1 = double.parse(_expression);
    _num2 = 0;
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
    _num1 = 0;
    _num2 = 0;
    notifyListeners();
  }
}
