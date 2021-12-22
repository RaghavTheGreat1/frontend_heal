import 'package:flutter/material.dart';

import 'screens/home/homescreen.dart';
import 'theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme(),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

