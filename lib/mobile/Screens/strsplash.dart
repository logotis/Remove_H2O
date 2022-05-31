import 'package:flutter/material.dart';
import 'package:remove_h2o/mobile/Screens/body.dart';
import 'package:remove_h2o/mobile/size_config.dart';

class strsplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return const Scaffold(
      body: Splash(),
    );
  }
}
