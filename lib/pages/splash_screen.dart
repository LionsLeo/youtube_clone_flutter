import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:youtube_clone/constants/color_constants.dart';
// import 'package:youtube_clone/navigation.dart';
import '../constants/color_constants.dart';
import '../navigation.dart';

class SplashScreenNew extends StatefulWidget {
  const SplashScreenNew({super.key});

  @override
  State<SplashScreenNew> createState() => _SplashScreenNewState();
}

class _SplashScreenNewState extends State<SplashScreenNew> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const BottomNavigation())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ytBgColor,
      body: Center(
          child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/yt_logo.png'))),
      )),
    );
  }
}
