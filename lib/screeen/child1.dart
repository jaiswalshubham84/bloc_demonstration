import 'package:bloc_architecture/bloc_model/bloc_model.dart';
import 'package:bloc_architecture/bloc_model/generic_bloc_provider.dart';
import 'package:flutter/material.dart';

class Child1 extends StatelessWidget {
  ColorBloc colorBloc;
  @override
  Widget build(BuildContext context) {
    //geeting the instance of our model created at Parent
    colorBloc = BlocProvider.of(context);
    return Column(
      children: <Widget>[
        Container(
          child: StreamBuilder(
            initialData: Colors.red,
            stream: colorBloc.colorStream,
            builder: (BuildContext context, snapShot) => Center(
                  child: Container(
                    height: 200.0,
                    width: 200.0,
                    color: snapShot.data,
                  ),
                ),
          ),
        ),
      ],
    );
  }
}
