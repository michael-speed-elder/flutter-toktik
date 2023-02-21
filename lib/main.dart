import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tiktok_digitalturbine/providers/video_store.dart';
import 'package:tiktok_digitalturbine/toktik/bottom_nav_bar.dart';
import 'package:tiktok_digitalturbine/toktik/cell.dart';
import 'package:tiktok_digitalturbine/toktik/toptabs.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

// double opacity = 1;

final _controller = PageController();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(iconTheme: const IconThemeData(color: Colors.white)),
      home: Scaffold(
        backgroundColor: Colors.black,
        // appBar: AppBar(
        //   backgroundColor: Colors.black54,
        //   title: const Text("Tiktok clone"),
        // ),
        body: DefaultTextStyle(
          style: const TextStyle(color: Colors.white, fontSize: 16),
          child: Stack(
            children: [
              PageView.builder(
                itemCount: fullVideoList.length,
                scrollDirection: Axis.vertical,
                controller: _controller,
                itemBuilder: (context, idx) => TokTikCell(fullVideoList[idx]),
              ),
              const TokTikTopTabs(),
            ],
          ),
        ),
        bottomNavigationBar: const TokTikBottomNavBar(),
      ),
    );
  }
}
