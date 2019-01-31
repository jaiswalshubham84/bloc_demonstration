import 'dart:async';
import 'dart:math';
import 'package:bloc_architecture/bloc_model/generic_bloc_provider.dart';
import 'package:flutter/material.dart';

class ColorBloc extends BlocBase {
// streams of Color
  StreamController streamListController = StreamController<Color>.broadcast();
// sink
  Sink get colorSink => streamListController.sink;
// stream
  Stream<Color> get colorStream => streamListController.stream;

// function to change the color
  changeColor() {
    colorSink.add(getRandomColor());
  }

//disponsing our Stream
  @override
  dispose() {
    streamListController.close();
  }
}

// Random Colour generator
Color getRandomColor() {
  Random _random = Random();
  return Color.fromARGB(
      255, _random.nextInt(256), _random.nextInt(256), _random.nextInt(256));
}
