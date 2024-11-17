import 'package:flutter/material.dart';
import 'package:ios_calculator/History.dart';
import 'package:provider/provider.dart';

class HistoryUI extends StatelessWidget {
  const HistoryUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('History'),
        ),
      body: ListView.builder(
        itemCount: context.watch<History>().calculations.length,
        itemBuilder: (context, index) {
          return ListTile(
            subtitle: Text(context.watch<History>().calculations[index]),
          );
        },
      ),
    );
  }
}
