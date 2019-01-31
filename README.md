# Demonstrating State Management via BLoC Architecture

In this project i try to give a solution to the limitation of state management in flutter.

**BLoC Architecture**: BLoC Architecture is a business logic component thats separates you business logic of your app from the UI from app via the use of Stream, thus providing MVVM architecture support to your app. Since this is not a package but a logic, it provide freedom to the developer to architect their app according to their need.
The architecture was developed  by two of the google developer Paolo Soares and Cong Hui and it came to live when it was presented for the first time at 2018 Dart Conference.

**What are Streams**: Streams are sequence of asynchronous events. To understand this better let us think of a pipe containing liquid where adding one color from one end will update the color of whole liquid. The end from which we add color is "Sink" and end from which we visualised these change is "Stream". Where as "StreamBuilder" act as an Observable eye which keep on listening these and updates the screen color accordingly.

**BLoC works like the same in Flutter**. In order update the widget at run time we make those property of the widget as a Stream which will change in run time using StreamController. These property can be anything colour, border, height, width. After Stream is created, it can be easily modify and listen via two property exposed by Stream i.e sink and stream.
