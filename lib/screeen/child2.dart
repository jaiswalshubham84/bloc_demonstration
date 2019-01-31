import 'package:bloc_architecture/bloc_model/bloc_model.dart';
import 'package:bloc_architecture/bloc_model/generic_bloc_provider.dart';
import 'package:flutter/material.dart';

class Child2 extends StatelessWidget {
  ColorBloc colorBloc;
  @override
  Widget build(BuildContext context) {
    colorBloc = BlocProvider.of(context);
    return Column(
      children: <Widget>[
        Container(
          child: Center(
            child: RaisedButton(
              child: Text("Change Color"),
              color: Colors.blue,
              onPressed: () {
                colorBloc.changeColor();
              },
            ),
          ),
        ),
      ],
    );
  }
}
