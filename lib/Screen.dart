import 'package:flutter/material.dart';

class Screen with ChangeNotifier {
  String _expression = '0';
  String get expression => _expression;

  void addExpression(String value) {
    final operators = ['+', '-', '*', '/'];
    final digits = RegExp(r'\d');

    if (_expression == '0') {
      if (digits.hasMatch(value)) {
        _expression = value;
      } else if (value == '.') {
        _expression += value;
      } else if (operators.contains(value)) {
        if (value == '-') {
          _expression = value;
        } else {
          return;
        }
      } else {
        return;
      }
    } else {
      String lastChar = _expression[_expression.length - 1];

      if (operators.contains(value)) {
        if (operators.contains(lastChar)) {
          return;
        } else {
          _expression += value;
        }
      } else if (value == '.') {
        // Check if the current number already contains a '.'
        int i = _expression.length - 1;
        while (i >= 0 && !operators.contains(_expression[i])) {
          i--;
        }
        String lastNumber = _expression.substring(i + 1);
        if (lastNumber.contains('.')) {
          return;
        } else {
          _expression += value;
        }
      } else if (digits.hasMatch(value)) {
        _expression += value;
      } else {
        return;
      }
    }

    notifyListeners();
  }

  void evaluateExpression() {
   
  }

  void clearExpression() {
    _expression = '0';
    notifyListeners();
  }

  void deleteLastEntry() {
    _expression = _expression.substring(0, _expression.length - 1);
    notifyListeners();
  }
}
