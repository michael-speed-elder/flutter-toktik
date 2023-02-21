import 'package:flutter/material.dart';

class TokTikProgress extends StatelessWidget {
  final double value;

  const TokTikProgress(this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: LinearProgressIndicator(
        value: value,
        minHeight: 2,
        backgroundColor: Colors.grey.withOpacity(0.67),
        color: Colors.white.withOpacity(0.67),
      ),
    );
  }
}
