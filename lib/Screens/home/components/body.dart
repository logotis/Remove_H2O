import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:remove_h2o/Screens/send_referral.dart';
import 'package:remove_h2o/Screens/reportEmergency_Screen.dart';
import 'package:remove_h2o/take_photo.dart';

import 'home_menu.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          SizedBox(height: 20),
          HomeMenu(
            text: "Report Emergency",
            icon: FontAwesomeIcons.phone,
            press: () => {Navigator.push(context, MaterialPageRoute(builder: (context)=>ReportEmergency()))},
          ),
          SizedBox(height: 20),
          HomeMenu(
            text: "Send a Referral",
            icon: FontAwesomeIcons.users,
            press: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>SendReferral()));},
          ),
          SizedBox(height: 20),
          HomeMenu(
            text: "Send a Picture",
            icon: FontAwesomeIcons.camera,
            press: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>PhotoData()));},
          ),
          SizedBox(height: 20),
          HomeMenu(
            text: "User's List",
            icon: FontAwesomeIcons.list,
            press: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>PhotoData()));},
          ),
          SizedBox(height: 20),
          HomeMenu(
            text: "Finance",
            icon: FontAwesomeIcons.lineChart,
            press: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>PhotoData()));},
          ),
        ],
      ),
    );
  }
}
