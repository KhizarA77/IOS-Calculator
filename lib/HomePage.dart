import 'package:flutter/material.dart';
import 'package:ios_calculator/Screen.dart';
import 'package:ios_calculator/ScreenUI.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({ super.key });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [ // 2 children, screen and buttons
          ScreenUI(),

        ],
      ),
    );
  }
}