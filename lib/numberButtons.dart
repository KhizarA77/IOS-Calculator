import 'package:flutter/material.dart';
import 'package:ios_calculator/Screen.dart';
import 'package:provider/provider.dart';


class CustomNumberButtons extends StatelessWidget {
  const CustomNumberButtons({ super.key, required this.number, this.width = 100 });

  final int number;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: ElevatedButton(
          onPressed: () {
            context.read<Screen>().addExpression('$number');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey[800],
            padding: const EdgeInsets.all(20),
            shape: number == 0 ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)) : const CircleBorder(),
          ),
          child: Align(
            alignment: number == 0 ? Alignment.centerLeft : Alignment.center,
            child: Text(
              '$number',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          )
        ),
      ),
    );
  }
}