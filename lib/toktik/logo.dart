import 'package:flutter/material.dart';
import 'package:tiktok_digitalturbine/font.dart';

class TokTikLogo extends StatelessWidget {
  const TokTikLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      // mainAxisSize: MainAxisSize.min,
      child: DecoratedBox(
        decoration: const BoxDecoration(color: Color.fromRGBO(255, 200, 48, 1)),
        child: Stack(
          // fit: StackFit.expand,
          alignment: Alignment.centerLeft,
          children: const [
            Align(
              alignment: Alignment.centerRight,
              child: Icon(
                TikTokIcons.create,
                color: Color.fromARGB(255, 250, 45, 108),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Icon(
                TikTokIcons.create,
                color: Color.fromARGB(255, 32, 211, 234),
              ),
            ),
            Icon(TikTokIcons.create, color: Colors.white),
            Icon(Icons.add, color: Colors.black),
            // Container(
            //     margin: const EdgeInsets.only(left: 10.0),
            //     width: CreateButtonWidth,
            //     decoration: BoxDecoration(
            //         color: const Color.fromARGB(255, 250, 45, 108),
            //         borderRadius: BorderRadius.circular(7.0))),
            // Container(
            //   margin: const EdgeInsets.only(right: 10.0),
            //   width: CreateButtonWidth,
            //   decoration: BoxDecoration(
            //       color: const Color.fromARGB(255, 32, 211, 234),
            //       borderRadius: BorderRadius.circular(7.0)),
            // ),
            // Center(
            //   child: Container(
            //     height: double.infinity,
            //     width: CreateButtonWidth,
            //     decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(7.0)),
            //     child: const Icon(Icons.add, size: 20.0),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
