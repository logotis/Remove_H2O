// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:remove_h2o/mobile/constants.dart';
import 'package:remove_h2o/mobile/enum.dart';
import 'package:remove_h2o/mobile/size_config.dart';
import 'package:remove_h2o/mobile/vendor_user_signup/components/user_signupform.dart';

class UserSignUpScreen extends StatefulWidget {
  // final test=Roles();
  @override
  State<UserSignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<UserSignUpScreen> {
  final auth = FirebaseAuth.instance;
  final firestore = FirebaseFirestore.instance;

  void _submitauthform(
    String email,
    String fname,
    String lname,
    String phoneNo,
    String password,
  ) async {
    UserCredential userCredential;
    try {
      userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      DocumentReference ref =
          firestore.collection('Users').doc(auth.currentUser!.uid);

      await ref.set({
        'docId': ref.id,
        'email': email,
        'role': Roles.user,
        'approved': true,
        'deleted': false,
        'firstName': fname,
        'isEmailVerified': false,
        'Adress': lname,
        'phoneNo': phoneNo,
        'password': password,
      });
    } on FirebaseAuthException catch (err) {
      print(err);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.black),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
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
                    ),
                  ),
                  Column(
                    children: [
                      // SizedBox(height: SizeConfig.screenHeight * 0.04), // 4%
                      Text(
                        "Sign Up",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black45),
                      ),
                      SizedBox(height: 5),
                      Text("Complete Profile", style: headingStyle),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Complete your details or continue \nwith social media",
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 5),
                      UserSignUpForm(_submitauthform),
                      SizedBox(height: 15),

                      Text(
                        'By continuing your confirm that you agree \nwith our Term and Condition',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}