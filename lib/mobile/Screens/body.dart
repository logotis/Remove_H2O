// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:remove_h2o/mobile/Screens/sign_in/sign_in_screen.dart';
import 'package:remove_h2o/mobile/sphome/sphome.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      print(user);
    });
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 3500), () {});
    FirebaseAuth.instance.currentUser != null
        ? Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SPHome()))
        : Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SignInScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue,
                Colors.red,
              ],
            )),
          ),
          Center(
            child: Container(
              child: Image.asset("assets/logo.png"),
            ),
          ),
        ],
      ),
    );
  }
}
