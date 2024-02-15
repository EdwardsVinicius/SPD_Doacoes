import 'package:flutter/material.dart';
import 'package:flutter_maps/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: const Color(0xFF9BE7E2)),
        home: const Home());
  }
}
