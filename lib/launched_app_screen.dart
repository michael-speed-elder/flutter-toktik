import 'package:flutter/material.dart';

class LaunchedAppScreen extends StatelessWidget {
  final String appScreen;

  const LaunchedAppScreen(this.appScreen, {super.key});

  @override
  Widget build(BuildContext context) =>
      Image.asset("assets/images/app_screens/$appScreen", fit: BoxFit.cover);
}
