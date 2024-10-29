import 'package:flutter/material.dart';
import 'package:ios_calculator/Screen.dart';
import 'package:provider/provider.dart';


class CustomOperationButtons extends StatelessWidget {
  const CustomOperationButtons({ super.key, required this.operation });

  final String operation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: ElevatedButton(
          onPressed: () {
            if (operation == '=') {
              context.read<Screen>().setNum2();
              context.read<Screen>().evaluateExpression();
            }
            else {
              if (context.read<Screen>().expression == '0' && operation == '-') {
                context.read<Screen>().addExpression('-');
              }
              else {
                context.read<Screen>().setNum1(operation);
              }
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange, 
            padding: const EdgeInsets.all(20),
            shape: const CircleBorder(),
          ),
          child: Text(
            operation,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}