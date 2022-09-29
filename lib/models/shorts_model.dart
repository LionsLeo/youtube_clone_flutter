class ShortsModel {
  String video_url,
      channel_name,
      channel_profile,
      likes,
      dislikes,
      comment_count,
      title;

  ShortsModel(this.video_url, this.channel_name, this.channel_profile,
      this.likes, this.dislikes, this.comment_count, this.title);
}

List<ShortsModel> shorts = shortsData
    .map((item) => ShortsModel(
        item['video_url']!,
        item['channel_name']!,
        item['channel_profile']!,
        item['likes']!,
        item['dislikes']!,
        item['comment_count']!,
        item['title']!))
    .toList();

var shortsData = [
  {
    "video_url": "assets/shorts/1.mp4",
    "channel_name": "John Cena",
    "channel_profile": "assets/profile_pics/1.jpg",
    "likes": "20K",
    "dislikes": "Dislike",
    "comment_count": "15",
    "title":
        "How to Create Super Smooth Slow Motion Video In Adobe Premiere Pro"
  },
  {
    "video_url": "assets/shorts/2.mp4",
    "channel_name": "Meet Gada",
    "channel_profile": "assets/profile_pics/2.jpg",
    "likes": "1M",
    "dislikes": "Dislike",
    "comment_count": "100K",
    "title":
        "How do you like this super cool Driver Personalization System?! Mazda CX-60 #shorts | jessicarmaniac"
  },
  {
    "video_url": "assets/shorts/3.mp4",
    "channel_name": "Smit Shah",
    "channel_profile": "assets/profile_pics/3.jpg",
    "likes": "100",
    "dislikes": "Dislike",
    "comment_count": "12",
    "title": "King Cobra BITE or not? #shorts"
  }
];
