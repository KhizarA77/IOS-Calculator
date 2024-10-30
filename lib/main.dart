import 'package:flutter/material.dart';
import 'package:ios_calculator/HomePage.dart';
import 'package:ios_calculator/Screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Screen()),
      ],
      child: MaterialApp(
        title: 'Calculator',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          appBarTheme: const AppBarTheme(),
          useMaterial3: false,
        ),
        home: const Homepage(),
      ),
    );
  }
}



