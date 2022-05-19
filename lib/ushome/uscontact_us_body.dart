// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:remove_h2o/Screens/aboutus_screen.dart';
import 'package:remove_h2o/Screens/home/Home_screen.dart';
import 'package:remove_h2o/contactus/contactus_screen.dart';
import 'package:remove_h2o/navigartion_drawer.dart';
import 'package:remove_h2o/size_config.dart';
import 'package:remove_h2o/ushome/uscontact_us.dart';
import 'package:remove_h2o/vendor%20user/userapprovedbody.dart';

class UserContactusBody extends StatelessWidget {
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
        title:  Image.asset(
                "assets/images/logo.png",
                height: getProportionateScreenHeight(270),
              ),
      ),
      drawer: NavigationDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
                backgroundColor: Colors.black,
                radius: 16,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 2.0, bottom: 1),
                    child: Icon(Icons.arrow_back_ios, size: 18),
                  ),
                )),
            SizedBox(height: 55),
            Text('Contact Us:',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 20),
            StreamBuilder(
              stream:
                  FirebaseFirestore.instance.collection('Users')
                  .where('docId', isEqualTo: auth.currentUser!.uid)
                  .snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return Text('Something went wrong');
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Text("Loading");
                }
                return ListView(
                    shrinkWrap: true,
                    // itemCount: snapshot.data!.docs.length,
                    // itemBuilder: ((context, index) {
                    children:
                        snapshot.data!.docs.map((DocumentSnapshot document) {
                      Map<String, dynamic> data =
                          document.data()! as Map<String, dynamic>;

                      return Column(
                        children: [
                          userctspage(
                            text: data['firstName'],
                            icon: FontAwesomeIcons.mapLocationDot,
                            press: null,
                          ),
                          userctspage(
                            text: data['phoneNo'],
                            icon: FontAwesomeIcons.phone,
                            press: null,
                          ),
                          userctspage(
                            text: "www.abc.com",
                            icon: FontAwesomeIcons.globe,
                            press: null,
                          ),
                        ],
                      );
                    }).toList());
              },
            )
          ],
        ),
      ),
    );
  }
}
