import 'package:flutter/material.dart';
import 'package:ios_calculator/History.dart';
import 'package:ios_calculator/HistoryUI.dart';
import 'package:ios_calculator/HomePage.dart';
import 'package:ios_calculator/Screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
     MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Screen()),
        ChangeNotifierProvider(create: (_) => History())
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculator',
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 24,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        drawer: const NavigationDrawer(),
        body: const Homepage(),
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),


    );
  }

  Widget buildHeader(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      )
    );

  }

  Widget buildMenuItems(BuildContext context) {

    return ListTile(
      leading: const Icon(Icons.history),
      title: const Text('History'),
      onTap: () {
        Navigator.pop(context);
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HistoryUI()));
      },
    );
  }
}
