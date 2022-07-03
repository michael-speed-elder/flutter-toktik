import 'dart:math';

import 'package:flutter/material.dart';
import 'package:infinite_scroll/toktik/buttons.dart';
import 'package:infinite_scroll/toktik/text.dart';
import 'package:infinite_scroll/toktik/toptabs.dart';
import 'package:infinite_scroll/utils.dart';

String getRandomImage() {
  const List<String> urls = [
    'https://media.giphy.com/media/DvXQYuGWQ34v6/giphy.gif',
    'https://media.giphy.com/media/DvXQYuGWQ34v6/giphy.gif',
    'https://media.giphy.com/media/5SAPlGAS1YnLN9jHua/giphy.gif',
    'https://media.giphy.com/media/semLgqWI3U3qU/giphy.gif',
    'https://media.giphy.com/media/IEkkhUSoBfbPy/giphy.gif',
    'https://media.giphy.com/media/IEkkhUSoBfbPy/giphy.gif',
    'https://media.giphy.com/media/PmA0EJVGQXHnHt944d/giphy.gif',
    'https://images.unsplash.com/photo-1656019206311-8ba4153cfefb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1450&q=80'
  ];
  return urls[Random().nextInt(urls.length)];
}

class TokTikCell extends StatelessWidget {
  const TokTikCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: randomColor(),
      decoration: BoxDecoration(
        image: DecorationImage(
          // alignment: Alignment.center,
          fit: BoxFit.cover,
          image: NetworkImage(getRandomImage()),
        ),
      ),
      height: MediaQuery.of(context).size.height - 80,
      padding: const EdgeInsets.all(8.0),
      child: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.transparent, Colors.transparent],
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: const [
            TokTikTopTabs(),
            TopTikVolume(),
            TokTikText(),
            TokTikButtons()
          ],
        ),
      ),
    );
  }
}

class TopTikVolume extends StatelessWidget {
  const TopTikVolume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.topRight,
      child: Icon(Icons.volume_up),
    );
  }
}
