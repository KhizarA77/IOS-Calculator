import 'package:flutter/material.dart';
import 'package:ios_calculator/Screen.dart';
import 'package:provider/provider.dart';


class CustomNumberButtons extends StatelessWidget {
  const CustomNumberButtons({ super.key, required this.number });

  final int number;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          context.read<Screen>().addExpression('$number');
        },
        child: Text('$number'),
      ),
    );
  }
}