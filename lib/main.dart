import 'package:flutter/material.dart';
import 'package:sliverlist_example/di/setup_locator.dart';
import 'package:sliverlist_example/screens/sliver_list_screen.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SliverList Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SliverListScreen(),
    );
  }
}
