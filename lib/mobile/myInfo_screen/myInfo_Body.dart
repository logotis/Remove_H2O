import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:remove_h2o/mobile/Screens/sign_in/sign_in_screen.dart';
import 'package:remove_h2o/mobile/myInfo_screen/my_info_screen.dart';
import 'package:remove_h2o/mobile/profileUpdate_appinfo/upgradeAddress.dart';
import 'package:remove_h2o/mobile/profileUpdate_appinfo/upgradeEmail.dart';
import 'package:remove_h2o/mobile/profileUpdate_appinfo/upgradeNumber.dart';
import 'package:remove_h2o/mobile/size_config.dart';

class Infoscreenbody extends StatefulWidget {
  @override
  State<Infoscreenbody> createState() => _InfoscreenbodyState();
}

class _InfoscreenbodyState extends State<Infoscreenbody> {
  final firestore = FirebaseFirestore.instance.collection('Users');
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
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
      // drawer: NavigationDrawer(),
      body:
          // SingleChildScrollView(
          //   padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          //   child:
          //   Column(
          //     // mainAxisAlignment: MainAxisAlignment.start,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       CircleAvatar(
          //         backgroundColor: Colors.black,
          //         radius: 16,
          //         child: IconButton(
          //           onPressed: () {
          //             Navigator.push(
          //                 context, MaterialPageRoute(builder: (context) => Home()));
          //           },
          //           icon: Padding(
          //             padding: const EdgeInsets.only(left: 2.0, bottom: 1),
          //             child: Icon(Icons.arrow_back_ios, size: 18),
          //           ),
          //         ),
          //       ),
          //       SizedBox(height: 16),
          //       Center(
          //         child: Stack(
          //           children: [
          //             CircleAvatar(
          //                 radius: (60),
          //                 backgroundColor: Colors.white,
          //                 child: ClipRRect(
          //                   borderRadius: BorderRadius.circular(50),
          //                   child: Image.asset("assets/images/Profile Image.png"),
          //                 )),
          //             Positioned(
          //               bottom: 8,
          //               right: 0,
          //               child: Container(
          //                 height: 32.0,
          //                 width: 32.0,
          //                 decoration: BoxDecoration(
          //                     border: Border.all(color: Colors.black, width: 0.5),
          //                     shape: BoxShape.circle,
          //                     color: Color(0xffffffff)),
          //                 child: IconButton(
          //                   icon: FaIcon(
          //                     FontAwesomeIcons.camera,
          //                     color: Color.fromARGB(255, 8, 8, 8),
          //                     size: 16,
          //                   ),
          //                   iconSize: 30,
          //                   onPressed: () {},
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //       SizedBox(height: 20),

          FutureBuilder<DocumentSnapshot>(
        future: firestore.doc(auth.currentUser!.uid).get(),
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text("Something went wrong");
          }

          if (snapshot.hasData && !snapshot.data!.exists) {
            return Text("Document does not exist");
          }

          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            return Center(
              child: ListView(
                children: [
                  Infopage(
                    text: data['email'],
                    icon: FontAwesomeIcons.envelopeOpen,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Emailupgrade()),
                      );
                    },
                  ),
                  Infopage(
                    text: data['phoneNo'],
                    icon: FontAwesomeIcons.phoneSquare,
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Numberupgrade()));
                    },
                  ),
                  Infopage(
                    text: data['Adress'],
                    icon: FontAwesomeIcons.mapLocationDot,
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddressUpgrade()));
                    },
                  ),
                  Infopage(
                    text: "Log Out",
                    icon: FontAwesomeIcons.signOut,
                    press: () async {
                      await auth.signOut();
                      User? user = auth.currentUser;
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: ((context) => SignInScreen())));
                    },
                  ),
                ],
              ),
            );
          }

          return Text("loading");
        },
      ),

      // Infopage(
      //   text: "abc@gmail.com",
      //   icon: FontAwesomeIcons.envelopeOpen,
      //   press: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(builder: (context) => Emailupgrade()),
      //     );
      //   },
      // ),
      // Infopage(
      //   text: "123-456-789",
      //   icon: FontAwesomeIcons.phoneSquare,
      //   press: () {
      //     Navigator.push(context,
      //         MaterialPageRoute(builder: (context) => Numberupgrade()));
      //   },
      // ),
      // Infopage(
      //   text: "Some street........",
      //   icon: FontAwesomeIcons.mapLocationDot,
      //   press: () {
      //     Navigator.push(context,
      //         MaterialPageRoute(builder: (context) => AddressUpgrade()));
      //   },
      // ),
      // Infopage(
      //   text: "Log Out",
      //   icon: FontAwesomeIcons.signOut,
      //   press: () {},
      // ),
      //   ],
      // ),
      // ),
    );
  }
}
