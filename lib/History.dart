import 'package:flutter/material.dart';

class History with ChangeNotifier {


  List<String> _calculations = [];
  

  List<String> get calculations => _calculations;


  void addCalculation(String calculation) {
    _calculations.add(calculation);
    notifyListeners();
  }

  

  

}