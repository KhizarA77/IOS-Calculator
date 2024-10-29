import 'package:flutter/material.dart';
// import 'package:ios_calculator/Screen.dart';
import 'package:ios_calculator/ScreenUI.dart';
import 'package:ios_calculator/buttonsLayout.dart';
// import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({ super.key });


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          ScreenUI(),
          ButtonsLayout(),
        ],
      ),
    );
  }
}