import 'package:flutter/material.dart';
import 'package:kbb_app/Home/Main/HomeRouteWidget.dart';
import 'package:kbb_app/Demo/EmbedScroll.dart';

void main() {
  runApp(KbbApp());
}

class KbbApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kbb',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  HomeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeRouteWidget()
      // body: CustomScrollViewTestRoute(),
    );
  }
}
