import 'package:flutter/material.dart';
import 'package:gca_assignment2/view/movieList.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'YTS MOVIES',
        home: Home(title: 'YTS MOVIES'),
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          accentColor: Colors.redAccent[400],
          fontFamily: 'Roboto',
        ));
  }
}

class Home extends StatelessWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    // return MovieList();
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(child: MovieList()),
    );
  }
}
