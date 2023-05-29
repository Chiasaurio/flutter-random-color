import 'package:flutter/material.dart';
import 'package:solid_test/home_page.dart';

void main() {
  runApp(const Main());
}

/// main class
class Main extends StatelessWidget {
  /// main class constructor
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter solid test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
