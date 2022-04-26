// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:remove_h2o/Screens/sign_up/sign_up_screen.dart';
import 'package:remove_h2o/Screens/user_list/users_list.dart';
import 'package:remove_h2o/screen_buttons/reportEmergency_Screen.dart';
import 'package:remove_h2o/size_config.dart';
import 'package:remove_h2o/userlist_buttons/pendingAccess_body.dart';

class userlistbody extends StatefulWidget {
  const userlistbody({Key? key}) : super(key: key);

  @override
  State<userlistbody> createState() => _userlistbodyState();
}

class _userlistbodyState extends State<userlistbody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        automaticallyImplyLeading: false,
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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 16,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 2.0, bottom: 1),
                      child: Icon(Icons.arrow_back_ios, size: 18),
                    ),
                  )),
            ),
            SizedBox(
              height: 25.0,
            ),
            SizedBox(height: 20),
            UserList(
              text: "Pending Access",
              icon: FontAwesomeIcons.hourglassEnd,
              press: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PendingAccess_body())),
              },
            ),
            SizedBox(height: 20),
            UserList(
              text: "Approved User's",
              icon: FontAwesomeIcons.users,
              press: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ReportEmergency()))
              },
            ),
            SizedBox(height: 20),
            UserList(
              text: "Revoke Access",
              icon: FontAwesomeIcons.refresh,
              press: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ReportEmergency()))
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (_)=>SignUpScreen()));
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
