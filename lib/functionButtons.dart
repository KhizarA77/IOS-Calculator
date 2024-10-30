import 'package:flutter/material.dart';
import 'package:ios_calculator/Screen.dart';
import 'package:provider/provider.dart';


class CustomFunctionButtons extends StatelessWidget {
  const CustomFunctionButtons({ super.key, required this.operation });

  final String operation;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: ElevatedButton(
          onPressed: () {
            if (operation == 'AC') {
              context.read<Screen>().clearExpression();
            } else if (operation == '+/-') {
              context.read<Screen>().changeSign();
            } else if (operation == '%') {
              context.read<Screen>().percentage();
            }
            else {
              context.read<Screen>().addExpression(operation);
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: operation == '.' ? Colors.grey[800] : Colors.grey[400],
            padding: const EdgeInsets.all(20),
            shape: const CircleBorder(),
          ),
          child: Text(
            operation,
            style: TextStyle(
              color: operation == '.' ? Colors.white : Colors.black,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}