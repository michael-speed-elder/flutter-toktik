import 'package:intl/intl.dart';
import 'package:tiktok_digitalturbine/utils.dart';

var numFormatter = NumberFormat.compact(locale: "en-US");

class Video {
  final String video;
  final String author;
  final String avatar;
  final String title;
  final List<String> tags;
  final String song;

  final likes = numFormatter.format(randomNum(limit: 1000000));
  final comments = randomNum(limit: 5000);
  final bookmarks = randomNum(limit: 10000);
  final shares = randomNum(limit: 2500);

  Video({
    required this.video,
    required this.author,
    required this.avatar,
    required this.title,
    required this.tags,
    required this.song,
  });
}
