import 'package:flutter/material.dart';
import 'package:youtube_clone_flutter/constants/color_constants.dart';
import 'package:youtube_clone_flutter/pages/home_page.dart';
import 'package:youtube_clone_flutter/pages/library_page.dart';
import 'package:youtube_clone_flutter/pages/shorts_page.dart';
import 'package:youtube_clone_flutter/pages/subs_page.dart';
import 'package:line_icons/line_icons.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List pages = [
    const HomePage(),
    const ShortsPage(),
    Container(),
    const SubsPage(),
    const LibraryPage()
  ];
  int _currentindex = 0;
  void onTapPage(int index) {
    if (index == 2) {
      showBottomSheet();
      return;
    }
    setState(() {
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: ytBgColor, child: SafeArea(child: pages[_currentindex])),
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
          const BottomNavigationBarItem(
              label: 'Library', icon: Icon(Icons.video_collection_outlined)),
        ],
      ),
    );
  }

  showBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: ((context) => Container(
              height: 300,
              decoration: BoxDecoration(color: ytBgColor),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Create',
                          style: TextStyle(
                              color: ytWhite,
                              fontWeight: FontWeight.w600,
                              fontSize: 25),
                        ),
                        GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: Icon(
                              Icons.close,
                              color: ytLightText,
                              size: 40,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: ytIconHighlight),
                          child: Icon(
                            LineIcons.byName('play'),
                            color: ytWhite,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Create a Short',
                          style: TextStyle(
                              color: ytWhite,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: ytIconHighlight),
                          child: Icon(
                            Icons.upgrade_outlined,
                            color: ytWhite,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Upload a video',
                          style: TextStyle(
                              color: ytWhite,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: ytIconHighlight),
                          child: Icon(
                            Icons.live_tv_sharp,
                            color: ytWhite,
                            size: 20,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Go Live',
                          style: TextStyle(
                              color: ytWhite,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )));
  }
}
