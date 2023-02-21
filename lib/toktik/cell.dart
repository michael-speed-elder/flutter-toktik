import 'package:flutter/material.dart';
import 'package:tiktok_digitalturbine/models/video_model.dart';
import 'package:tiktok_digitalturbine/toktik/buttons.dart';
import 'package:tiktok_digitalturbine/toktik/progress.dart';
import 'package:tiktok_digitalturbine/toktik/text.dart';
import 'package:tiktok_digitalturbine/toktik/video.dart';

callback(double progress) {}

class TokTikCell extends StatefulWidget {
  final Video videoObject;

  const TokTikCell(this.videoObject, {super.key});

  @override
  State<TokTikCell> createState() => _TokTikCellState();
}

class _TokTikCellState extends State<TokTikCell> {
  updateProgress(double videoProgress) {
    setState(() {
      progress = videoProgress;
    });
  }

  double progress = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 80,
      // padding: const EdgeInsets.fromLTRB(8, 32, 8, 8),
      child: Stack(
        // fit: StackFit.expand,
        children: [
          TokTikVideo(widget.videoObject.video, updateProgress),
          DecoratedBox(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.transparent],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 40, 8, 12),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  TokTikText(widget.videoObject),
                  TokTikButtons(widget.videoObject),
                ],
              ),
            ),
          ),
          TokTikProgress(progress),
        ],
      ),
    );
  }
}
