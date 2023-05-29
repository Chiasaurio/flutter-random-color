// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_test/home_page.dart';

void main() {
  testWidgets('HomePage changes color on tap', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomePage()));
    // ignore: lines_longer_than_80_chars
    final initialColor =
        tester.widget<Scaffold>(find.byType(Scaffold)).backgroundColor;

    // Verify that the initial color is white
    expect(initialColor, Colors.white);

    // Tap the screen to change the color
    await tester.tap(find.byType(GestureDetector));
    await tester.pump();

    // ignore: lines_longer_than_80_chars
    final updatedColor =
        tester.widget<Scaffold>(find.byType(Scaffold)).backgroundColor;

    // Verify that the color has changed from the initial color
    expect(updatedColor, isNot(initialColor));
  });
}
