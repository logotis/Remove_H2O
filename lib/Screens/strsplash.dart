import 'package:flutter/material.dart';
import 'package:remove_h2o/Screens/body.dart';
import 'package:remove_h2o/size_config.dart';

class strsplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Splash(),
    );
  }
}
