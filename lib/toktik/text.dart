import 'package:flutter/material.dart';
import 'package:tiktok_digitalturbine/models/ad_model.dart';
import 'package:tiktok_digitalturbine/models/video_model.dart';
import 'package:tiktok_digitalturbine/toktik/ad_box.dart';

class TokTikText extends StatelessWidget {
  final Video videoObject;

  const TokTikText(this.videoObject, {super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: FractionallySizedBox(
        widthFactor: 0.8,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              videoObject.author,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            // Container(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
              child: TokTikTitleAndTags(
                title: videoObject.title,
                tags: videoObject.tags,
              ),
            ),
            // Text("See Translation"),
            if (videoObject.song.isNotEmpty)
              Row(
                children: [
                  const Icon(Icons.music_note),
                  Flexible(
                    child: Text(
                      videoObject.song,
                      overflow: TextOverflow.fade,
                      softWrap: false,
                    ),
                  )
                ],
              ),
            if (videoObject is Ad) const SizedBox(height: 8),
            if (videoObject is Ad) TokTikAdBox(videoObject as Ad),
          ],
        ),
      ),
    );
  }
}

class TokTikTitleAndTags extends StatelessWidget {
  final String title;
  final List<String> tags;

  const TokTikTitleAndTags({Key? key, required this.title, required this.tags})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 4.0,
      children: [
        Text(title),
        ...List<Widget>.generate(
          tags.length,
          (i) => Text(
            tags[i],
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          growable: false,
        )
      ],
    );
  }
}

// class ShadowedText extends Text {
//   final String text;
//   final TextOverflow myOverflow;
//   final bool mySoftWrap;

//   const Text(this.text,
//       {Key? key,
//       this.myOverflow = TextOverflow.visible,
//       this.mySoftWrap = false})
//       : super(text, key: key, overflow: myOverflow, softWrap: mySoftWrap);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: const TextStyle(
//           shadows: [Shadow(color: Colors.white, blurRadius: 2)]),
//     );
//   }
// }
