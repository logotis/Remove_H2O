import 'package:flutter/material.dart';
import 'package:remove_h2o/Screens/startingsplash/strsplash.dart';
import 'package:remove_h2o/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: strsplash(),
      theme: theme(),
      // We use routeName so that we dont need to remember the name
    );
  }
}
