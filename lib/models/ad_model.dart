import 'package:flutter/animation.dart';
import 'package:intl/intl.dart';
import 'package:tiktok_digitalturbine/models/video_model.dart';

var numFormatter = NumberFormat.compact(locale: "en-US");

class Ad extends Video {
  final String brandName;
  final String brandLogo;
  final String brandTagline;
  final String appScreen;
  final Color brandColor;
  final String sheetImage;
  final bool xBtnOnImage;

  Ad({
    required this.brandName,
    required this.brandLogo,
    required this.brandTagline,
    required this.appScreen,
    required this.brandColor,
    required this.sheetImage,
    this.xBtnOnImage = false,
    // ----
    required super.video,
    required super.author,
    required super.title,
    required super.tags,
    required super.song,
  }) : super(avatar: brandLogo);
}
