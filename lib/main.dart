import 'package:flutter/material.dart';
import 'package:youtube_clone/navigation.dart';
import 'package:youtube_clone/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreenNew(),
    );
  }
}
