// ignore_for_file: void_checks, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:remove_h2o/Mobile/financescreen.dart';
import 'package:remove_h2o/mobile/Screens/aboutus_screen.dart';
import 'package:remove_h2o/mobile/Screens/user_list/userList_body.dart';
import 'package:remove_h2o/mobile/navigartion_drawer.dart';
import 'package:remove_h2o/mobile/screen_buttons/reportEmergency_Screen.dart';
import 'package:remove_h2o/mobile/screen_buttons/send_referral.dart';
import 'package:remove_h2o/mobile/size_config.dart';

import 'home_menu.dart';

UserCredential? userCredential;

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
        title: appbarlogo.isNotEmpty
            ? Image.network(
                appbarlogo,
                height: getProportionateScreenHeight(270),
              )
            : Image.asset(
                "assets/images/logo.png",
                height: getProportionateScreenHeight(270),
              ),
      ),
      drawer: NavigationDrawer(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            HomeMenu(
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
            HomeMenu(
              text: "Send a Referral",
              icon: FontAwesomeIcons.users,
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SendReferral()));
              },
            ),
            // SizedBox(height: 20),
            // HomeMenu(
            //   text: "Send a Picture",
            //   icon: FontAwesomeIcons.camera,
            //   press: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => PhotoData()));
            //   },
            // ),
            SizedBox(height: 20),
            HomeMenu(
              text: "User's List",
              icon: FontAwesomeIcons.list,
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => userlistbody()));
              },
            ),
            SizedBox(height: 20),
            HomeMenu(
              text: "Finance",
              icon: FontAwesomeIcons.lineChart,
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Financescreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
