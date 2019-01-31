import 'dart:async';
import 'package:bloc_architecture/bloc_model/generic_bloc_provider.dart';
import 'package:bloc_architecture/bloc_model/random_color_generator.dart';
import 'package:flutter/material.dart';

class ColorBloc1 extends BlocBase {
// streams of Color
  StreamController streamListController = StreamController<Color>.broadcast();
// sink
  Sink get colorSink => streamListController.sink;
// stream
  Stream<Color> get colorStream => streamListController.stream;

  changeColor() {
    // sinkItemadd.add("data added");
    colorSink.add(getRandomColor());
  }

  @override
  dispose() {
    streamListController.close();
  }
}
