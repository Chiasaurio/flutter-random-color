import 'dart:math' as math;
import 'package:flutter/material.dart';

///home page
class HomePage extends StatefulWidget {
  ///home page constructor
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _colorNotifier = ValueNotifier<Color>(Colors.white);
  final _baseColor = 0xFFFFFF;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Color>(
      valueListenable: _colorNotifier,
      builder: (context, value, child) {
        return GestureDetector(
          onTap: () {
            _colorNotifier.value =
                Color((math.Random().nextDouble() * _baseColor).toInt())
                    .withOpacity(1.0);
          },
          child: Scaffold(
            backgroundColor: value,
            body: const Center(
              child: Text(
                "Hello World",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        );
      },
    );
  }
}
