class VideosModel {
  String title,
      channel_name,
      channel_profile,
      views,
      upload_date,
      duration,
      thumbnail;

  String subscribe, video_url;

  VideosModel(
      this.title,
      this.channel_name,
      this.channel_profile,
      this.views,
      this.upload_date,
      this.duration,
      this.thumbnail,
      this.subscribe,
      this.video_url);
}

List<VideosModel> videos = videoData
    .map((item) => VideosModel(
        item['title']!,
        item['channel_name']!,
        item['channel_profile']!,
        item['views']!,
        item['upload_date']!,
        item['duration']!,
        item['thumbnail']!,
        item['subscribe']!,
        item['video_url']!))
    .toList();

var videoData = [
  {
    "title":
        "Flutter Customized Bottom Navigationbar | Flutter Widgets #1 | Code With Guru",
    "channel_name": "Mike McHargue",
    "channel_profile": "assets/profile_pics/1.jpg",
    "views": "20K views",
    "upload_date": "6 days ago",
    "duration": "20:02",
    "thumbnail": "assets/thumbnails/1.jpg",
    "subscribe": "true",
    "video_url": "assets/videos/1.mp4"
  },
  {
    "title": "Flutter: Internet Connectivity | Stay Connected",
    "channel_name": "Kerry Johnston",
    "channel_profile": "assets/profile_pics/2.jpg",
    "views": "1M views",
    "upload_date": "15 days ago",
    "duration": "05:12",
    "thumbnail": "assets/thumbnails/2.jpg",
    "subscribe": "false",
    "video_url": "assets/videos/1.mp4"
  },
  {
    "title": "Avengers Endgame | 'Avengers Assemble' Scenes - IMAX 4K",
    "channel_name": "Mike Brown",
    "channel_profile": "assets/profile_pics/3.jpg",
    "views": "80K views",
    "upload_date": "6 days ago",
    "duration": "03:02",
    "thumbnail": "assets/thumbnails/3.jpg",
    "subscribe": "true",
    "video_url": "assets/videos/1.mp4"
  },
  {
    "title":
        "Best Scenes Of Arshad Warsi | From Lage Raho Munna Bhai & Munna Bhai M.B.B.S. | Comedy Videos",
    "channel_name": "Meet Gada",
    "channel_profile": "assets/profile_pics/4.jpg",
    "views": "1K views",
    "upload_date": "10 days ago",
    "duration": "22:32",
    "thumbnail": "assets/thumbnails/4.jpg",
    "subscribe": "true",
    "video_url": "assets/videos/1.mp4"
  },
  {
    "title": "Hera Pheri All Best Comedy Scenes | Best Bollywood Comedy Scenes",
    "channel_name": "John Cena",
    "channel_profile": "assets/profile_pics/5.jpg",
    "views": "50K views",
    "upload_date": "5 days ago",
    "duration": "26:00",
    "thumbnail": "assets/thumbnails/5.jpg",
    "subscribe": "false",
    "video_url": "assets/videos/1.mp4"
  },
  {
    "title":
        "Chup Chup ke Movie Paresh Raval Rajpal Yadav Comedy Scene | RSY Films",
    "channel_name": "Smit Shah",
    "channel_profile": "assets/profile_pics/6.png",
    "views": "100 views",
    "upload_date": "5 years ago",
    "duration": "01:41",
    "thumbnail": "assets/thumbnails/6.jpg",
    "subscribe": "false",
    "video_url": "assets/videos/1.mp4"
  },
  {
    "title": "AR Project HCI",
    "channel_name": "Shubham Shah",
    "channel_profile": "assets/profile_pics/7.jpg",
    "views": "90K views",
    "upload_date": "30 days ago",
    "duration": "16:00",
    "thumbnail": "assets/thumbnails/7.jpg",
    "subscribe": "true",
    "video_url": "assets/videos/1.mp4"
  },
  {
    "title": "You’re A Miracle",
    "channel_name": "Native Design",
    "channel_profile": "assets/profile_pics/8.jpg",
    "views": "20K views",
    "upload_date": "1 year ago",
    "duration": "18:02",
    "thumbnail": "assets/thumbnails/8.jpg",
    "subscribe": "true",
    "video_url": "assets/videos/1.mp4"
  },
];
