import 'package:flutter/material.dart';

void noop() {}

class TokTikButtons extends StatelessWidget {
  const TokTikButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          CircleAvatar(
            child: Icon(Icons.person_add),
            backgroundColor: Colors.redAccent,
          ),
          LabelledButton(
            onPressed: noop,
            icon: Icon(Icons.thumb_up_sharp),
            label: "146",
          ),
          LabelledButton(
              onPressed: noop, icon: Icon(Icons.comment), label: "22"),
          LabelledButton(
              onPressed: noop, icon: Icon(Icons.share), label: "Share"),
          // IconButton(onPressed: noop, icon: Icon(Icons.music_video)),
        ],
      ),
    );
  }
}

class LabelledButton extends StatelessWidget {
  final Icon icon;
  final String label;
  final Function onPressed;

  const LabelledButton(
      {Key? key,
      required this.icon,
      required this.label,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      IconButton(
        onPressed: noop,
        icon: icon,
        splashColor: Colors.red,
      ),
      Text(
        label,
        style: const TextStyle(fontSize: 10),
      )
    ]);
  }
}
