import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_clone/pages/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.blue, // navigation bar color
    statusBarColor: Colors.pink, // status bar color
    statusBarBrightness: Brightness.dark, //status bar brigtness
    statusBarIconBrightness: Brightness.dark, //status barIcon Brightness
    systemNavigationBarDividerColor:
        Colors.greenAccent, //Navigation bar divider color
    systemNavigationBarIconBrightness: Brightness.light, //navigation bar icon
  ));
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
        primarySwatch: Colors.red,
      ),
      home: const SplashScreenNew(),
    );
  }
}
