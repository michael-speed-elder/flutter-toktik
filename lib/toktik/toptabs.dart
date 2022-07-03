import 'package:flutter/material.dart';

class TokTikTopTabs extends StatelessWidget {
  const TokTikTopTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text("Following"),
          SizedBox(width: 8),
          Text(
            "For you",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
