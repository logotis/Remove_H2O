// ignore_for_file: void_checks, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:remove_h2o/Screens/user_list/userList_body.dart';
import 'package:remove_h2o/enum.dart';
import 'package:remove_h2o/financescreen.dart';
import 'package:remove_h2o/leadgeneration_body.dart';
import 'package:remove_h2o/screen_buttons/reportEmergency_Screen.dart';
import 'package:remove_h2o/screen_buttons/send_referral.dart';
import 'package:remove_h2o/screen_buttons/take_photo.dart';

import 'home_menu.dart';

UserCredential? userCredential;

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Roles.vendor == 2
              ? HomeMenu(
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
                )
              : Text(''),
          SizedBox(height: 20),
          HomeMenu(
            text: "Send a Referral",
            icon: FontAwesomeIcons.users,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SendReferral()));
            },
          ),
          SizedBox(height: 20),
          Roles.vendor == 2
              ? HomeMenu(
                  text: "Send a Picture",
                  icon: FontAwesomeIcons.camera,
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PhotoData()));
                  },
                )
              : Text(''),
          SizedBox(height: 20),
          HomeMenu(
            text: "Vendor's List",
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
          SizedBox(height: 20),
          HomeMenu(
            text: "Lead Generation list",
            icon: FontAwesomeIcons.rectangleAd,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Leadgenerationbody()));
            },
          ),
        ],
      ),
    );
  }
}
