// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:remove_h2o/Screens/user_list/users_list.dart';
import 'package:remove_h2o/size_config.dart';
import 'package:remove_h2o/vendor%20user%20signup/user_signup.dart';
import 'package:remove_h2o/vendor%20user/userapprovedbody.dart';
import 'package:remove_h2o/vendor%20user/userpendingbody.dart';
import 'package:remove_h2o/vendor%20user/userrevokebody.dart';

class Vendoruserlistbody extends StatefulWidget {
  const Vendoruserlistbody({Key? key}) : super(key: key);

  @override
  State<Vendoruserlistbody> createState() => _userlistbodyState();
}

class _userlistbodyState extends State<Vendoruserlistbody> {
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
                        builder: (context) => VendorpendingAccess_body())),
              },
            ),
            SizedBox(height: 20),
            UserList(
              text: "Approved User's",
              icon: FontAwesomeIcons.users,
              press: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Vendorapprrovedbody()))
              },
            ),
            SizedBox(height: 20),
            UserList(
              text: "Revoke Access",
              icon: FontAwesomeIcons.refresh,
              press: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VendorrevokeuserBody()))
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => UserSignUpScreen()));
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
