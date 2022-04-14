import 'package:flutter/material.dart';

import 'components/body.dart';
import 'package:remove_h2o/theme.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
      ),
      body: Body(),
    );
  }
}
