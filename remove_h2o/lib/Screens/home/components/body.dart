import 'package:flutter/material.dart';

import 'home_menu.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          SizedBox(height: 20),
          HomeMenu(
            text: "Report Emergency",
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),
          HomeMenu(
            text: "Send a Referral",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          HomeMenu(
            text: "Send a Picture",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
