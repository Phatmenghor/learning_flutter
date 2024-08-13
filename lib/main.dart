import 'package:flutter/material.dart';
import 'package:learning_interview/learning/learning_01.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // useMaterial3: true,
          ),
      home: const Learning01(),
    );
  }
}
