import 'package:flutter/material.dart';
import 'package:tiktok_digitalturbine/font.dart';
import 'package:tiktok_digitalturbine/models/video_model.dart';

void noop() {}

class _TokTikAvatar extends StatelessWidget {
  final Video videoObject;

  const _TokTikAvatar(this.videoObject);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 50, maxWidth: 40),
      child: Stack(
        // alignment: Alignment.centerRight,
        fit: StackFit.passthrough,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(999),
            ),
            child: Transform.scale(
              scale: 0.9,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(
                  "assets/images/${videoObject.avatar}",
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 24,
              height: 16,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 250, 45, 108),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Icon(Icons.add, color: Colors.white, size: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TokTikButtons extends StatelessWidget {
  final Video videoObject;

  const TokTikButtons(this.videoObject, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _TokTikAvatar(videoObject),
            LabelledButton(
              onPressed: noop,
              icon: const Icon(TikTokIcons.heart),
              label: videoObject.likes,
            ),
            LabelledButton(
              onPressed: noop,
              icon: const Icon(TikTokIcons.chatBubble),
              label: "${videoObject.comments}",
            ),
            LabelledButton(
              onPressed: noop,
              icon: const Icon(Icons.bookmark, size: 28),
              label: "${videoObject.bookmarks}",
            ),
            LabelledButton(
              onPressed: noop,
              icon: const Icon(TikTokIcons.reply, size: 20),
              label: "${videoObject.shares}",
            ),
            // IconButton(onPressed: noop, icon: Icon(Icons.music_video)),
          ],
        ),
      ),
    );
  }
}

class LabelledButton extends StatelessWidget {
  final Icon icon;
  final String label;
  final Function onPressed;

  const LabelledButton({
    required this.icon,
    required this.label,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 20),
        icon,
        const SizedBox(height: 6),
        // IconButton(
        //   onPressed: noop,
        //   icon: icon,
        //   splashColor: Colors.red,
        //   padding: EdgeInsets.zero,
        // ),
        Text(label, style: const TextStyle(fontSize: 11))
      ],
    );
  }
}
