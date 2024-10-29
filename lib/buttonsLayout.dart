import 'package:flutter/material.dart';
import 'package:ios_calculator/functionButtons.dart';
import 'package:ios_calculator/numberButtons.dart';
import 'package:ios_calculator/operationButtons.dart';

class ButtonsLayout extends StatelessWidget {
  const ButtonsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      height: 590,
      color: Colors.black,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              CustomFunctionButtons(operation: 'AC'),
              CustomFunctionButtons(operation: '+/-'),
              CustomFunctionButtons(operation: '%'),
              CustomOperationButtons(operation: '÷'),
            ],
          ),
          Row(
            children: [
              CustomNumberButtons(number: 7),
              CustomNumberButtons(number: 8),
              CustomNumberButtons(number: 9),
              CustomOperationButtons(operation: '×'),
            ],
          ),
          Row(
            children: [
              CustomNumberButtons(number: 4),
              CustomNumberButtons(number: 5),
              CustomNumberButtons(number: 6),
              CustomOperationButtons(operation: '-'),
            ],
          ),
          Row(
            children: [
              CustomNumberButtons(number: 1),
              CustomNumberButtons(number: 2),
              CustomNumberButtons(number: 3),
              CustomOperationButtons(operation: '+'),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 10),
              CustomNumberButtons(number: 0, width: 190),
              CustomFunctionButtons(operation: '.'),
              CustomOperationButtons(operation: '='),
            ],
          ),
        ],
      ),
    );
  }
}