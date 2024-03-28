import 'package:flutter/material.dart';
import 'package:movieapp/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Donjuan+',
      theme: ThemeData(),
      home: const FirstScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
