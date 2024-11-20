import 'package:animation/pages/home_page.dart';
import 'package:animation/pages/media_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AnimationApp',
      home: MediaPage(),
    );
  }
}
