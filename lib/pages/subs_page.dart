import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:youtube_clone_flutter/constants/color_constants.dart';
import 'package:youtube_clone_flutter/models/video_model.dart';
import 'package:youtube_clone_flutter/pages/home_page.dart';

class SubsPage extends StatefulWidget {
  const SubsPage({super.key});

  @override
  State<SubsPage> createState() => _SubsPageState();
}

class _SubsPageState extends State<SubsPage> {
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
              const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
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
        Container(
          width: MediaQuery.of(context).size.width,
          height: 2,
          color: ytHighlightColor,
        ),
        Padding(
          padding: const EdgeInsets.all(1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _isLoading ? ShimmerChannelName() : ChannelName(),
              Container(
                height: 100,
                child: Center(
                  child: Text(
                    'ALL',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w900),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 2,
          color: ytHighlightColor,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 5),
          child: SizedBox(
            height: 45,
            child: _isLoading ? ShimmerRecommendTile() : RecommendTile(),
          ),
        ),
        _isLoading ? ShimmerGenerate() : VideosGenerate(),
      ]),
    );
  }
}

class RecommendTile extends StatelessWidget {
  const RecommendTile({
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
              'SETTINGS',
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

class ChannelName extends StatelessWidget {
  const ChannelName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 80,
      height: 100,
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: videos.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          videos[index].channel_profile))),
                            ),
                            Container(
                              width: 70,
                              child: Center(
                                child: Text(
                                  videos[index].channel_name,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: ytWhite,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12),
                                ),
                              ),
                            )
                          ]),
                    );
                  })),
        ],
      ),
    );
  }
}

class ShimmerChannelName extends StatelessWidget {
  const ShimmerChannelName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 80,
      height: 100,
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: videos.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: ytHighlightColor),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Container(
                                width: 50,
                                height: 10,
                                color: ytHighlightColor,
                              )
                            ]),
                      ),
                    );
                  })),
        ],
      ),
    );
  }
}
