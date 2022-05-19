// ignore_for_file: void_checks, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:remove_h2o/screen_buttons/reportEmergency_Screen.dart';
import 'package:remove_h2o/screen_buttons/send_referral.dart';
import 'package:remove_h2o/size_config.dart';
import 'package:remove_h2o/userleadgenerationbody.dart';
import 'package:remove_h2o/ushome/components/us_home_menu.dart';
import 'package:remove_h2o/ushome/user_nav_drawer.dart';

UserCredential? userCredential;

class UsBody extends StatefulWidget {
  @override
  State<UsBody> createState() => _BodyState();
}

class _BodyState extends State<UsBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.blue,
        ),
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        centerTitle: true,
        title: Image.asset(
          "assets/images/logo.png",
          height: getProportionateScreenHeight(270),
        ),
      ),
      drawer: UserNavigationDrawer(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            USHomeMenu(
              text: "Report Emergency",
              icon: FontAwesomeIcons.phone,
              press: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReportEmergency(),
                  ),
                ),
              },
            ),
            SizedBox(height: 20),
            USHomeMenu(
              text: "Send a Referral",
              icon: FontAwesomeIcons.users,
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SendReferral()));
              },
            ),
            SizedBox(height: 20),
            USHomeMenu(
              text: "Lead Generation list",
              icon: FontAwesomeIcons.rectangleAd,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UserLeadgenerationbody()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
