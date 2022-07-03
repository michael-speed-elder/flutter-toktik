import 'dart:math';

import 'package:flutter/material.dart';

int randomNum({int limit = 256}) {
  var rand = Random();
  return rand.nextInt(limit);
}

randomColor() {
  return Color.fromARGB(255, randomNum(), randomNum(), randomNum());
}
