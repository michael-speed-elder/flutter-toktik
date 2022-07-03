import 'package:flutter/material.dart';
import 'package:infinite_scroll/utils.dart';

class TokTikText extends StatelessWidget {
  const TokTikText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("@author"),
          Container(height: 8),
          const TokTikTitleAndTags(
              title: "title", tags: ["#lit", "#fuego", "#omg"]),
          // Text("See Translation"),
          Row(
            children: const [
              Icon(Icons.music_note),
              Flexible(
                child: Text(
                  // "My Heart Will Go On - Titanic Original Motion Picture Soundtrack",
                  "My Heart Will Go On",
                  overflow: TextOverflow.fade,
                  softWrap: false,
                ),
              )
            ],
          ),
        ],
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
      children: [
        Text(title),
        ...List<Widget>.generate(
            tags.length * 2,
            (i) => i % 2 == 0
                ? Container(width: 4)
                : Text(tags[(i / 2).floor()],
                    style: const TextStyle(fontWeight: FontWeight.bold)),
            growable: false)
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
