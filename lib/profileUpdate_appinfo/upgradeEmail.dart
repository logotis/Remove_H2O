// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:remove_h2o/size_config.dart';

import '../vendor user/userapprovedbody.dart';

class Emailupgrade extends StatefulWidget {
  const Emailupgrade({Key? key}) : super(key: key);

  @override
  State<Emailupgrade> createState() => _EmailupgradeState();
}

class _EmailupgradeState extends State<Emailupgrade> {

  TextEditingController mailController = TextEditingController();
  TextEditingController newmailController = TextEditingController();
  void Updatemail() async {
    await FirebaseFirestore.instance
        .collection('Users')
        .doc(auth.currentUser!.uid)
        .update({'email': newmailController.text.trim()});
  }

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
      body:SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar( backgroundColor: Colors.black,
                radius: 16,
                child: IconButton(onPressed: (){
                  Navigator.pop(context);},  icon: Padding(
                  padding: const EdgeInsets.only(left: 2.0,bottom: 1),
                  child: Icon(Icons.arrow_back_ios,size: 18),
                ),)),
            SizedBox(height: 55),
            Text('Change Email:',
                style:TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 40),
            // TextFormField(
            //   decoration: const InputDecoration(
            //     icon: Icon(Icons.person),
            //     hintText: 'What do people call you?',
            //     labelText: 'Name *',
            //   ),
            //   onSaved: (String? value) {
            //     // This optional block of code can be used to run
            //     // code when the user saves the form.
            //   },
            //   validator: (String? value) {
            //     return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
            //   },
            // )
      TextFormField(
      controller: mailController,
      decoration: InputDecoration(
      hintText: "Enter Previous Email",
      floatingLabelBehavior: FloatingLabelBehavior.always,
        // prefixIcon: Padding(
        //   padding: const EdgeInsets.only(left: 16.0),
        //   child: CustomIcon(svgIcon: "assets/icons/Lock.svg"),
        // ),
      prefixIcon:  IconButton(
      icon:FaIcon(FontAwesomeIcons.envelopeOpen,color: Color.fromARGB(255, 8, 8, 8),),
      iconSize: 18,onPressed: null,
        ),
      ),
    ),
            SizedBox(height: 40,),
            TextFormField(
              controller: newmailController,
              decoration: InputDecoration(
                hintText: "Enter New Email",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                // prefixIcon: Padding(
                //   padding: const EdgeInsets.only(left: 16.0),
                //   child: CustomIcon(svgIcon: "assets/icons/Lock.svg"),
                // ),
                prefixIcon:  IconButton(
                  icon:FaIcon(FontAwesomeIcons.envelope,color: Color.fromARGB(255, 8, 8, 8),),
                  iconSize: 18,onPressed: null,
                ),
              ),
            ),
            SizedBox(height: 40.0,),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent,
                  onPrimary: Colors.white,
                  shadowColor: Colors.blueAccent,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  minimumSize: Size(100, 40), //////// HERE
                ),
                onPressed: Updatemail,
                child: Text('Continue'),
              ),
            )
          ],
        ),
      )
    );
  }
}
