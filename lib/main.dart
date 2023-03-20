import 'package:flutter/material.dart';

import 'screen/credit_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Credit App',
      theme: ThemeData.dark(
      ),
      home: const MyCreditScreen(),
    );
  }
}

