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
import 'package:remove_h2o/sphome/component/sp_home_menu.dart';
import 'package:remove_h2o/userleadgenerationbody.dart';
import 'package:remove_h2o/ushome/components/us_home_menu.dart';


UserCredential? userCredential;

class UsBody extends StatefulWidget {
  @override
  State<UsBody> createState() => _BodyState();
}

class _BodyState extends State<UsBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
