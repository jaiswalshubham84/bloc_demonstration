import 'dart:math';

import 'package:flutter/material.dart';

Color getRandomColor() {
  Random _random = Random();
  return Color.fromARGB(
    //or with fromRGBO with fourth arg as _random.nextDouble(),
    _random.nextInt(256),
    _random.nextInt(256),
    _random.nextInt(256),
    _random.nextInt(256),
  );
}
