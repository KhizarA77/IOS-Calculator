import 'package:flutter/material.dart';
import 'package:ios_calculator/ScreenUI.dart';
import 'package:ios_calculator/buttonsLayout.dart';


class Homepage extends StatelessWidget {
  const Homepage({ super.key });


  @override
  Widget build(BuildContext context) {
    return const Column(
          children: [
            ScreenUI(),
            ButtonsLayout(),
          ],
        );
  }
}