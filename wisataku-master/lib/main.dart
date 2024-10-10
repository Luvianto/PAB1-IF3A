import 'package:flutter/material.dart';
import 'package:wisataku/screens/tourism_main.dart';
import 'package:wisataku/screens/main_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisataku',
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}
