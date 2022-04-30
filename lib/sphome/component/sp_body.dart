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


UserCredential? userCredential;

class SPBody extends StatefulWidget {
  @override
  State<SPBody> createState() => _BodyState();
}

class _BodyState extends State<SPBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          
          SPHomeMenu(
            text: "Send a Referral",
            icon: FontAwesomeIcons.users,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SendReferral()));
            },
          ),
          SizedBox(height: 20),
         SPHomeMenu(
            text: "Finance",
            icon: FontAwesomeIcons.lineChart,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Financescreen()));
            },
          ),
          
          SizedBox(height: 20),
          SPHomeMenu(
            text: "Vendor's List",
            icon: FontAwesomeIcons.list,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => userlistbody()));
            },
          ),
         
        ],
      ),
    );
  }
}
