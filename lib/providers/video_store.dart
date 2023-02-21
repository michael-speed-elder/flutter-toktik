import 'package:flutter/material.dart';
import 'package:tiktok_digitalturbine/models/ad_model.dart';
import 'package:tiktok_digitalturbine/models/video_model.dart';

final _video1 = Video(
  author: "Bridget's Bridges",
  avatar: "users/1.jpg",
  title: "Not in Madison County anymore...",
  tags: ["#beautiful", "#longwaydown"],
  song: "Over the Kwai",
  video: "video_1",
);

final _video2 = Video(
  author: "SoloSummitter",
  avatar: "users/2.jpg",
  title: "Peak-a-boo", // <- Someone should license my genius
  tags: ["#overthehills", "#throughthetrees", "#tograndmashouse"],
  song: "Over the Misty Mountains",
  video: "video_2",
);

final _video3 = Video(
  author: "glinda_5354",
  avatar: "users/3.jpg",
  title: "Lone rain-ger",
  tags: ["#nature", "#natural", "#remote", "#alone"],
  song: "Natural soundscapes",
  video: "video_3",
);

final _video4 = Video(
  author: "No2ndTake",
  avatar: "users/4.jpg",
  title: "Let's quickly find out if my bungee cord is tied correctly",
  tags: ["#yolo", "#changeofpants"],
  song: "DJ downUnd3r - Mesa Verde - vegemighty",
  video: "video_4",
);

final _video5 = Video(
  author: "moss_man_expeditions",
  avatar: "users/5.jpg",
  title: "serene saturday",
  tags: ["#green", "#moss", "#everywhere"],
  song: "Into the Woods",
  video: "video_5",
);

final _video6 = Video(
  author: "dreem seek wence",
  avatar: "users/6.jpg",
  title: "Lodge of the Loch",
  tags: ["#goals", "#succession"],
  song: "Song - atmospheric - calm",
  video: "video_6",
);

final _video7 = Video(
  author: "Andy Nevins",
  avatar: "users/7.jpg",
  title: "Natural beauties",
  tags: ["#clear", "#breathedeep"],
  song: "Welcome Home - Radical Face",
  video: "video_7",
);

final _video8 = Video(
  author: "certifiedjio",
  avatar: "users/8.jpg",
  title: "Current Sneaker Rotation",
  tags: ["#bred4", "#pandadunk", "#taupe4"],
  song: "Woo (Sped Up) - Lewis Hanton",
  video: "video_8",
);

final _video9 = Video(
  author: "chrisfinds8888",
  avatar: "users/9.jpg",
  title: "finally...",
  tags: ["#jordans", "#nike", "#justdoit"],
  song: "Here With Me - d4vd",
  video: "video_9",
);

final _video10 = Video(
  author: "markonthemove",
  avatar: "users/10.jpg",
  title: "Places in USA that don't feel real",
  tags: ["#colorado", "#oregon", "#arizona", "#USA"],
  song: "Sail - Kreepa",
  video: "video_10",
);

final _video11 = Video(
  author: "sallytrubella",
  avatar: "users/11.jpg",
  title: "Empty the ocean",
  tags: ["#clear", "#onebottleatatime"],
  song: "ocean eyes - Billie Eilish",
  video: "video_11",
);

final _video12 = Video(
  author: "droneporn",
  avatar: "users/12.jpg",
  title: "Soaring",
  tags: ["#drone", "#droneporn"],
  song: "Runaway - AURORA",
  video: "video_12",
);

final _video13 = Video(
  author: "The Bearded Butchers",
  avatar: "users/13.jpg",
  title: "Love in the air",
  tags: ["#ribeye", "#marbelled"],
  song: "",
  video: "video_13",
);

final _video14 = Video(
  author: "voyagefox",
  avatar: "users/14.jpg",
  title: "Every drone is a winding road",
  tags: ["#droneshot", "#beautiful"],
  song: "Lovely - Billie Eilish & Khalid",
  video: "video_14",
);

final _video15 = Video(
  author: "whereisalby",
  avatar: "users/15.jpg",
  title: "Where is Alby #24",
  tags: ["#hintitsgreece"],
  song: "Stereo Love (feat. Vika Jigulina) [Mert Can Remix] - Edward Maya",
  video: "video_15",
);

final _video16 = Video(
  author: "Gian Luigi Palomba",
  avatar: "users/16.jpg",
  title: "Italyyyyy",
  tags: ["#mamamia", "#travel", "#courage"],
  song: "Stereo Love (feat. Vika Jigulina) [Mert Can Remix] - Edward Maya",
  video: "video_16",
);

final _video17 = Video(
  author: "Gian Luigi Palomba",
  avatar: "users/16.jpg",
  title: "vacay supercut",
  tags: ["#travel", "#courage"],
  song: "Stereo Love (feat. Vika Jigulina) [Mert Can Remix] - Edward Maya",
  video: "video_17",
);

final _hopperAd = Ad(
  brandName: "Hopper",
  brandLogo: "logos/hopper_logo.png",
  brandTagline: "Save money with the bunny!",
  brandColor: const Color.fromRGBO(250, 104, 102, 1),
  appScreen: "hopper.png",
  sheetImage: "hopper_sheet.png",
  // ----
  author: "ashleyblack",
  title: "What's she watchin'?",
  tags: ["#hopper"],
  song: "This Is What You Came For - Calvin Harris ft. Rihanna",
  video: "hopper_ad",
);

final _paramountAd = Ad(
  brandName: "Paramount+",
  brandLogo: "logos/paramount_logo.png",
  brandTagline: "A MOUNTAIN OF ENTERTAINMENT™",
  brandColor: const Color.fromRGBO(0, 78, 227, 1),
  appScreen: "paramount.png",
  sheetImage: "paramount_sheet.png",
  // ----
  author: "paramount_plus",
  title: "Plans start at only \$4.99/month. Cancel anytime.",
  tags: [
    "#paramount",
    "#wolfpack",
    "#yellowstone",
    "#1883",
    "#criminalminds",
    "#nfl_on_cbs"
  ],
  song: "Sound - peak performance - paramount",
  video: "paramount_ad",
);

final _ebayAd = Ad(
  brandName: "eBay",
  brandLogo: "logos/ebay_logo.png",
  brandTagline: "Deals made easy all year long",
  brandColor: Colors.black,
  appScreen: "ebay.png",
  sheetImage: "ebay_sheet.png",
  xBtnOnImage: true,
  // ----
  author: "ebay",
  title: "I don't have a problem...",
  tags: ["#ebay", "#bidfreedom"],
  song: "Sound - Bidding starts now - ebay",
  video: "ebay_ad",
);

final _seatgeekAd = Ad(
  brandName: "SeatGeek",
  brandLogo: "logos/seat_geek_logo.png",
  brandTagline:
      "Your next best-night-ever is waiting. And we have the tickets.",
  brandColor: const Color.fromRGBO(255, 91, 73, 1),
  appScreen: "seat_geek.png",
  sheetImage: "seat_geek_sheet.png",
  // ----
  author: "SeatGeek",
  title: "",
  tags: ["#getyourseat", "#inaseat"],
  song: "Crowd Goes Wild - Bien",
  video: "seat_geek_ad",
);

final _royalMatchAd = Ad(
  brandName: "Royal Match",
  brandLogo: "logos/royal_match_logo.png",
  brandTagline: "The king of puzzle games.",
  brandColor: const Color.fromRGBO(234, 161, 15, 1),
  appScreen: "royal_match.png",
  sheetImage: "royal_match_sheet.png",
  // ----
  author: "Royal Match",
  title: "",
  song: "",
  tags: ["#relaxing", "#noads", "#free", "#bestmobilegame"],
  video: "royal_match_ad",
);

final _videos = [
  _video1,
  _video2,
  _video3,
  _video4,
  _video5,
  _video6,
  _video7,
  _video8,
  _video9,
  _video10,
  _video11,
  _video12,
  _video13,
  _video14,
  _video15,
  _video16,
  _video17,
]..shuffle();

final _ads = [_ebayAd, _hopperAd, _paramountAd, _seatgeekAd, _royalMatchAd]
  ..shuffle();

final List<Video> fullVideoList = [
  _videos[0],
  _videos[1],
  _videos[2],
  _ads[0],
  _videos[3],
  _videos[4],
  _videos[5],
  _ads[1],
  _videos[6],
  _videos[7],
  _videos[8],
  _ads[2],
  _videos[9],
  _videos[10],
  _videos[11],
  _ads[3],
  _videos[12],
  _videos[13],
  _videos[14],
  _ads[4],
  _videos[15],
  _videos[16],
];
