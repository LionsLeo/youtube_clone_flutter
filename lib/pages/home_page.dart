import 'package:youtube_clone/constants/color_constants.dart';
import 'package:youtube_clone/models/video_model.dart';
import 'package:line_icons/line_icons.dart';

import 'package:flutter/material.dart';
import 'package:youtube_clone/pages/video_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body:
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Padding(
          padding:
              const EdgeInsets.only(top: 45, left: 15, right: 15, bottom: 10),
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
          padding: const EdgeInsets.only(left: 15, bottom: 5),
          child: SizedBox(
            height: 45,
            child: _isLoading ? ShimmerRecommendTile() : RecommendTileHome(),
          ),
        ),
        _isLoading ? ShimmerGenerate() : VideosGenerate(),
      ]),
    );
  }
}

class RecommendTileHome extends StatelessWidget {
  const RecommendTileHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: ytHighlightColor,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  Icon(
                    LineIcons.byName('compass'),
                    color: ytWhite,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Explore',
                      style: TextStyle(
                          color: ytWhite,
                          fontSize: 15,
                          fontWeight: FontWeight.w400)),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 5),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: VerticalDivider(
            color: ytHighlightColor,
            thickness: 2,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8, left: 3, right: 3),
          child: Container(
            width: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: ytWhite),
                borderRadius: BorderRadius.circular(50),
                color: ytWhite),
            child: Text(
              'All',
              style: TextStyle(
                  color: ytHighlightColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8, left: 3, right: 3),
          child: Container(
            width: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: ytHighlightColor),
            child: Text(
              'Live',
              style: TextStyle(
                  color: ytWhite, fontSize: 15, fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8, left: 3, right: 3),
          child: Container(
            width: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: ytHighlightColor),
            child: Text(
              'Gaming',
              style: TextStyle(
                  color: ytWhite, fontSize: 15, fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8, left: 3, right: 3),
          child: Container(
            width: 70,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: ytHighlightColor),
            child: Text(
              'Flutter',
              style: TextStyle(
                  color: ytWhite, fontSize: 15, fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8, left: 3, right: 3),
          child: Container(
            width: 90,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: ytHighlightColor),
            child: Text(
              'Business',
              style: TextStyle(
                  color: ytWhite, fontSize: 15, fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8, left: 3, right: 15),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              'SEND FEEDBACK',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.w900),
            ),
          ),
        ),
      ],
    );
  }
}

class VideosGenerate extends StatelessWidget {
  const VideosGenerate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.only(top: 1),
            itemCount: videos.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VideoScreen(
                              index: index,
                            )),
                  );
                },
                child: Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width * 0.56,
                      child: Stack(children: [
                        Hero(
                          tag: videos[index].thumbnail,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(videos[index].thumbnail),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: ytTimeBg,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5, right: 5, top: 2, bottom: 2),
                                  child: Text(
                                    videos[index].duration,
                                    style: TextStyle(
                                        color: ytWhite,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                )),
                          ),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 15, right: 15, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                    image: AssetImage(
                                        videos[index].channel_profile),
                                    fit: BoxFit.cover)),
                          ),
                          Expanded(
                            child: Container(
                              width: 230,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      videos[index].title,
                                      style: TextStyle(
                                          color: ytWhite,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 230,
                                          child: Text(
                                            maxLines: 2,
                                            videos[index].channel_name +
                                                "  " +
                                                "·" +
                                                "  " +
                                                videos[index].views +
                                                "  " +
                                                "·" +
                                                "  " +
                                                videos[index].upload_date,
                                            style: TextStyle(
                                                color: ytLightText,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.more_vert,
                            color: ytWhite,
                          )
                        ],
                      ),
                    )
                  ],
                )),
              );
            }));
  }
}

class ShimmerGenerate extends StatelessWidget {
  const ShimmerGenerate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.only(top: 1),
            itemCount: 3,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width * 0.56,
                      color: ytHighlightColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 15, right: 15, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: ytHighlightColor),
                          ),
                          Expanded(
                            child: Container(
                              width: 230,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      height: 15,
                                      color: ytHighlightColor,
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Container(
                                      width: 220,
                                      height: 15,
                                      color: ytHighlightColor,
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 50,
                                          height: 12,
                                          color: ytHighlightColor,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          width: 50,
                                          height: 12,
                                          color: ytHighlightColor,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          width: 50,
                                          height: 12,
                                          color: ytHighlightColor,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
              );
            }));
  }
}

class ShimmerRecommendTile extends StatelessWidget {
  const ShimmerRecommendTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8, left: 3, right: 3),
          child: Container(
            width: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: ytHighlightColor),
                borderRadius: BorderRadius.circular(50),
                color: ytHighlightColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8, left: 3, right: 3),
          child: Container(
            width: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: ytHighlightColor),
                borderRadius: BorderRadius.circular(50),
                color: ytHighlightColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8, left: 3, right: 3),
          child: Container(
            width: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: ytHighlightColor),
                borderRadius: BorderRadius.circular(50),
                color: ytHighlightColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8, left: 3, right: 3),
          child: Container(
            width: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: ytHighlightColor),
                borderRadius: BorderRadius.circular(50),
                color: ytHighlightColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8, left: 3, right: 3),
          child: Container(
            width: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: ytHighlightColor),
                borderRadius: BorderRadius.circular(50),
                color: ytHighlightColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8, left: 3, right: 3),
          child: Container(
            width: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: ytHighlightColor),
                borderRadius: BorderRadius.circular(50),
                color: ytHighlightColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8, left: 3, right: 3),
          child: Container(
            width: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: ytHighlightColor),
                borderRadius: BorderRadius.circular(50),
                color: ytHighlightColor),
          ),
        ),
      ],
    );
  }
}
