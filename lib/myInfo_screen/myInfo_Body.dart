import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:remove_h2o/Screens/home/Home_screen.dart';
import 'package:remove_h2o/myInfo_screen/my_info_screen.dart';
import 'package:remove_h2o/profileUpdate_appinfo/upgradeAddress.dart';
import 'package:remove_h2o/profileUpdate_appinfo/upgradeEmail.dart';
import 'package:remove_h2o/profileUpdate_appinfo/upgradeNumber.dart';

class Infoscreenbody extends StatefulWidget {
  @override
  State<Infoscreenbody> createState() => _InfoscreenbodyState();
}

class _InfoscreenbodyState extends State<Infoscreenbody> {
  final firestore = FirebaseFirestore.instance.collection('Users');
  final auth = FirebaseAuth.instance;
  


Future<void> signOut() async {
    await auth.signOut();
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
         

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
            return ListView(
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
                  press:signOut,
                ),
              ],
            );
          }

          return Text("loading");
        },
      ),

      
    );
  }
}
