import 'package:flutter/material.dart';
import 'package:tiktok_digitalturbine/toktik/search.dart';

class TokTikTopTabs extends StatelessWidget {
  const TokTikTopTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 48, 12, 0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Opacity(opacity: 0, child: TopTikSearch()),
            const Expanded(child: SizedBox()),
            const Text("Following"),
            const SizedBox(width: 16),
            Column(
              mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text("For You",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 6),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(999))),
                  height: 3,
                  width: 24,
                ),
              ],
            ),
            const Expanded(child: SizedBox()),
            const TopTikSearch(),
          ],
        ),
      ),
    );
  }
}
