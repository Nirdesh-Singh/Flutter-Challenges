import 'package:challenge_1/id_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Challenge - 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IDCard(),
    );
  }
}
