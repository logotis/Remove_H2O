// ignore_for_file: prefer_const_constructors, unnecessary_this, avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:remove_h2o/Screens/aboutus_screen.dart';
import 'package:remove_h2o/Screens/home/Home_screen.dart';
import 'package:remove_h2o/Screens/sign_in/components/sign_form.dart';
import 'package:remove_h2o/components/no_account_text.dart';
import 'package:remove_h2o/components/socal_card.dart';
import 'package:remove_h2o/enum.dart';
import 'package:remove_h2o/screen_buttons/reportEmergency_Screen.dart';
import 'package:remove_h2o/screen_buttons/send_referral.dart';
import 'package:remove_h2o/size_config.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  bool isLoading = false;

  void _signInauthform(
    String email,
    String password,
  ) async {
    UserCredential userCredential;
    try {
      userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      print(userCredential);
      //  final user=   FirebaseFirestore.instance
      //         .collection('User')
      //         .where('email', isEqualTo: userCredential.user!.email)
      //         .get();

      FirebaseFirestore.instance
          .collection('Users')
          .where('email', isEqualTo: userCredential.user!.email)
          .get()
          .then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach((doc) {
          print(doc["role"]);

          if (doc["approved"] != true) {
            Text('User is pending verification');
            
          } else {
            if (doc['role'] == Roles.superadmin) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Home()));
            } else if (doc['role'] == Roles.admin) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Home()));
            } else if (doc['role'] == Roles.vendor) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => Home()));
            } else if (doc['role'] == Roles.user) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Home()));
            }
          }
        });
      });
    } on FirebaseAuthException catch (err) {
      print(err);
    }
  }

  Future<void> controlSign() async {
    this.setState(() {
      isLoading = true;
    });
    GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    GoogleSignInAuthentication googleAuthentication =
        await googleUser!.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken);
    User? firebaseUser = (await auth.signInWithCredential(credential)).user;
    //sign In Success
    // if (firebaseUser != null) {
    //   //check if already sign up
    //   // final QuerySnapshot = await FirebaseFirestore.instance
    //   //     .collection('users')
    //   //     .where('id', isEqualTo: firebaseUser.uid)
    //   //     .get();
    //   // final List<QueryDocumentSnapshot>  querysnapshot=resultQuery
    // }
    // //Sign In Failed
    // else {
    //   Text('Try again, sign In failed');
    // }
  }

  // Future<void> signInWithGoogle() async {
  //   this.setState(() {
  //     isLoading = true;
  //   });
  //   // Trigger the authentication flow
  //   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  //   // Obtain the auth details from the request
  //   final GoogleSignInAuthentication? googleAuth =
  //       await googleUser?.authentication;

  //   // Create a new credential
  //   final credential = GoogleAuthProvider.credential(
  //     accessToken: googleAuth?.accessToken,
  //     idToken: googleAuth?.idToken,
  //   );

  //   // Once signed in, return the UserCredential
  //   // return await FirebaseAuth.instance.signInWithCredential(credential);
  //   User? firebaseUser = (await auth.signInWithCredential(credential)).user;
  //   //sign In Success
  //   if (firebaseUser != null) {
  //     //check if already sign up
  //     // final QuerySnapshot = await FirebaseFirestore.instance
  //     //     .collection('users')
  //     //     .where('id', isEqualTo: firebaseUser.uid)
  //     //     .get();
  //     // final List<QueryDocumentSnapshot>  querysnapshot=resultQuery
  //   }
  //   //Sign In Failed
  //   else {
  //     Text('Try again, sign In failed');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  Text(
                    "Sign in",
                    style: TextStyle(
                      color: Colors.black,
                      // fontSize: getProportionateScreenWidth(28),
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "Sign in with your email and password  \nor continue with social media",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  SignForm(_signInauthform),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocalCard(
                        icon: "assets/icons/google-icon.svg",
                        press: () {
                          controlSign();
                          // if all are valid then go to success screen
                          // KeyboardUtil.hideKeyboard(context);
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => Home()));
                        },
                      ),
                      SocalCard(
                        icon: "assets/icons/facebook-2.svg",
                        press: () {},
                      ),
                      // SocalCard(
                      //   icon: "assets/icons/twitter.svg",
                      //   press: () {},
                      // ),
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  NoAccountText(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
