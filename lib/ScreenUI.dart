import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ios_calculator/Screen.dart';

class ScreenUI extends StatelessWidget {
  const ScreenUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${context.watch<Screen>().expression}',
      style: Theme.of(context).textTheme.headlineMedium,
      key: const Key('ScreenState')
    );
  }
}