import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:remove_h2o/Screens/strsplash.dart';
import 'package:remove_h2o/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // Replace with actual values
      // options: kIsWeb || Platform.isAndroid
      //     ? const FirebaseOptions(
      //         apiKey: "AIzaSyBZUe4jJe_zjtNVeidyYSezQAYKPuVGVoA",
      //         appId: "1:663029016523:web:b0b77f7ff5accb66be384e",
      //         messagingSenderId: "663029016523",
      //         projectId: "removeh2o-360",
      //         storageBucket: "removeh2o-360.appspot.com",
      //       )
      //     : null,
      );

  runApp(MyApp());
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
