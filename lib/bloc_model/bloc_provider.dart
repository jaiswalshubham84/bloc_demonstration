import 'package:bloc_architecture/bloc_model/bloc_model.dart';
import 'package:flutter/material.dart';

class BlocProvider extends InheritedWidget {
  final ColorBloc bloc;
  final Widget child;
  BlocProvider({this.bloc, this.child}) : super(child: child);

  static BlocProvider of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(BlocProvider) as BlocProvider);
  @override
  bool updateShouldNotify(BlocProvider oldWidget) {
    return bloc != oldWidget.bloc;
  }
}
