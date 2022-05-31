import 'package:flutter/material.dart';
import 'package:remove_h2o/mobile/size_config.dart';

import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
      ),
      body: Body(),
    );
  }
}
