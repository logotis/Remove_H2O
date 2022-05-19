import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:remove_h2o/Screens/home/Home_screen.dart';
import 'package:remove_h2o/Screens/strsplash.dart';
import 'package:remove_h2o/sphome/sphome.dart';
import 'package:remove_h2o/theme.dart';
import 'package:remove_h2o/ushome/ushome.dart';

import 'Screens/home/components/body.dart';
import 'enum.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  User? cruser = FirebaseAuth.instance.currentUser;
  if(cruser!=null){
runApp(MyAppLogeedIn());

  }
  else{
    runApp(MyApp());
  }
  }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
          
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Remove H2O',
      home: strsplash(),
      theme: theme(),
      // We use routeName so that we don't need to remember the name
    );
  }
}

class MyAppLogeedIn extends StatefulWidget {
  @override
  State<MyAppLogeedIn> createState() => _MyAppLogeedInState();
}

class _MyAppLogeedInState extends State<MyAppLogeedIn> {
  // This widget is the root of your application.
  checkuser() async{
  await FirebaseFirestore.instance
          .collection('Users')
          .where('email', isEqualTo: userCredential!.user!.email)
          .get()
          .then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach((doc) {
          print(doc["role"]);

          if (doc["approved"] != true) {
            Text('User is pending verification');
            
          } else {
            if (doc['role'] == Roles.superadmin) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => SPHome()));
            } else if (doc['role'] == Roles.admin) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => SPHome()));
            } else if (doc['role'] == Roles.vendor) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => Home()));
            } else if (doc['role'] == Roles.user) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => USHome()));
            }
          }
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Remove H2O',
      home: checkuser(),
      theme: theme(),
      // We use routeName so that we don't need to remember the name
    );
  }
}
