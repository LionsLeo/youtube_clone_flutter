import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:youtube_clone/constants/color_constants.dart';
import 'package:youtube_clone/pages/create_page.dart';
import 'package:youtube_clone/pages/home_page.dart';
import 'package:youtube_clone/pages/library_page.dart';
import 'package:youtube_clone/pages/shorts_page.dart';
import 'package:youtube_clone/pages/subs_page.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List pages = [
    HomePage(),
    ShortsPage(),
    CreatePage(),
    SubsPage(),
    LibraryPage()
  ];
  int _currentindex = 0;
  void onTapPage(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: ytBgColor,
        elevation: 0.0,
        selectedFontSize: 11,
        unselectedFontSize: 11,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _currentindex,
        onTap: onTapPage,
        items: [
          BottomNavigationBarItem(
              label: 'Home', icon: Icon(LineIcons.byName('home'))),
          BottomNavigationBarItem(
              label: 'Shorts', icon: Icon(LineIcons.byName('play'))),
          BottomNavigationBarItem(
              label: 'Create', icon: Icon(LineIcons.values['plus'])),
          BottomNavigationBarItem(
              label: 'Subscriptions', icon: Icon(LineIcons.byName('video'))),
          BottomNavigationBarItem(
              label: 'Library', icon: Icon(Icons.video_collection_outlined)),
        ],
      ),
    );
  }
}
