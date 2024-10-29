import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ios_calculator/Screen.dart';

class ScreenUI extends StatelessWidget {
  const ScreenUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: const EdgeInsets.all(20),
      color: Colors.black,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Text(
          context.watch<Screen>().expression,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 50,
          ),
          key: const Key('ScreenState')
        ),
      ),
    );
  }
}