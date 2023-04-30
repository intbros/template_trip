import 'package:flutter/material.dart';
import 'package:trip/view/details_page.dart';
import 'package:trip/view/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    MaterialColor customColor = const MaterialColor(
      0xFFE9EFFF,
      <int, Color>{
        50: Color(0xFFE9EFFF),
        100: Color(0xFFE9EFFF),
        200: Color(0xFFE9EFFF),
        300: Color(0xFFE9EFFF),
        400: Color(0xFFE9EFFF),
        500: Color(0xFFE9EFFF),
        600: Color(0xFFE9EFFF),
        700: Color(0xFFE9EFFF),
        800: Color(0xFFE9EFFF),
        900: Color(0xFFE9EFFF),
      },
    );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: customColor,
      ),
      home: const MainPage(),
    );
  }
}