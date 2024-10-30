import 'package:flutter/material.dart';
import 'package:ios_calculator/functionButtons.dart';
import 'package:ios_calculator/numberButtons.dart';
import 'package:ios_calculator/operationButtons.dart';

class ButtonsLayout extends StatelessWidget {
  const ButtonsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 590,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                SizedBox(width: 5),
                CustomFunctionButtons(operation: 'AC'),
                CustomFunctionButtons(operation: '+/-'),
                CustomFunctionButtons(operation: '%'),
                CustomOperationButtons(operation: '÷'),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 5),
                CustomNumberButtons(number: 7),
                CustomNumberButtons(number: 8),
                CustomNumberButtons(number: 9),
                CustomOperationButtons(operation: '×'),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 5),
                CustomNumberButtons(number: 4),
                CustomNumberButtons(number: 5),
                CustomNumberButtons(number: 6),
                CustomOperationButtons(operation: '-'),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 5),
                CustomNumberButtons(number: 1),
                CustomNumberButtons(number: 2),
                CustomNumberButtons(number: 3),
                CustomOperationButtons(operation: '+'),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 15),
                CustomNumberButtons(number: 0, width: 190),
                CustomFunctionButtons(operation: '.'),
                CustomOperationButtons(operation: '='),
              ],
            ),
          ],
        ),
      ),
    );
  }
}