import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:youtube_clone/constants/color_constants.dart';
import 'package:youtube_clone/models/video_model.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  late bool _isLoading;
  @override
  void initState() {
    // TODO: implement initState
    _isLoading = true;
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ytBgColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  top: 45, left: 15, right: 15, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 20,
                        child: Image(image: AssetImage('assets/logo.png')),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              LineIcons.byName('chromecast'),
                              size: 23,
                              color: ytWhite,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              LineIcons.byName('bell'),
                              size: 23,
                              color: ytWhite,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              LineIcons.byName('search'),
                              size: 23,
                              color: ytWhite,
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Container(
                              width: 23,
                              height: 23,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  image: DecorationImage(
                                      image: AssetImage('assets/profile.png'))),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
              child: Text(
                'Recent',
                style: TextStyle(
                    color: ytWhite, fontSize: 15, fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 157,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Expanded(
                  child: _isLoading ? ShimmerRecentVideo() : RecentVideo(),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 2,
              color: ytHighlightColor,
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.history,
                            color: ytWhite,
                            size: 28,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'History',
                            style: TextStyle(color: ytWhite, fontSize: 15),
                          ),
                        ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.video_library_outlined,
                            color: ytWhite,
                            size: 28,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Your Videos',
                            style: TextStyle(color: ytWhite, fontSize: 15),
                          ),
                        ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.download,
                            color: ytWhite,
                            size: 28,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Downloads',
                                style: TextStyle(color: ytWhite, fontSize: 15),
                              ),
                              Text(
                                '0 videos',
                                style:
                                    TextStyle(color: ytLightText, fontSize: 13),
                              )
                            ],
                          ),
                        ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.movie_creation_outlined,
                            color: ytWhite,
                            size: 28,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Your movies',
                            style: TextStyle(color: ytWhite, fontSize: 15),
                          ),
                        ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20, bottom: 25),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            color: ytWhite,
                            size: 28,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Watch later',
                            style: TextStyle(color: ytWhite, fontSize: 15),
                          ),
                        ]),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 2,
                    color: ytHighlightColor,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15, left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Playlists',
                          style: TextStyle(
                              color: ytWhite,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                        Container(
                          child: Row(children: <Widget>[
                            Text(
                              'Recently added',
                              style: TextStyle(
                                  color: ytWhite,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_downward,
                              color: ytWhite,
                            )
                          ]),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.blue,
                            size: 28,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'New playlist',
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                          ),
                        ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.thumb_up_alt_outlined,
                            color: ytWhite,
                            size: 28,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Liked videos',
                                style: TextStyle(color: ytWhite, fontSize: 15),
                              ),
                              Text(
                                '1,021 videos',
                                style:
                                    TextStyle(color: ytLightText, fontSize: 13),
                              )
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class RecentVideo extends StatelessWidget {
  const RecentVideo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: videos.length,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 145,
                    height: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(videos[index].thumbnail))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 1, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 125,
                          child: Text(
                            videos[index].title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: ytWhite,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Container(
                          child: Icon(
                            Icons.more_vert,
                            color: ytWhite,
                            size: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Container(
                      width: 135,
                      child: Text(
                        videos[index].channel_name,
                        style: TextStyle(color: ytLightText, fontSize: 12),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
                ],
              ));
        });
  }
}

class ShimmerRecentVideo extends StatelessWidget {
  const ShimmerRecentVideo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 145,
                    height: 80,
                    color: ytHighlightColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 1, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 130,
                          height: 10,
                          color: ytHighlightColor,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3, left: 1),
                    child: Container(
                      width: 120,
                      height: 10,
                      color: ytHighlightColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3, left: 1),
                    child: Container(
                      width: 80,
                      height: 10,
                      color: ytHighlightColor,
                    ),
                  )
                ],
              ));
        });
  }
}
