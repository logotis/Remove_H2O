// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:remove_h2o/size_config.dart';

class PhotoData extends StatelessWidget {
  const PhotoData({Key? key}) : super(key: key);

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
                      Navigator.pop(context);
                    },
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 2.0, bottom: 1),
                      child: Icon(Icons.arrow_back_ios, size: 18),
                    ),
                  )),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter C_name",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Address",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Cell#",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Your New Address",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Work",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Email Addess",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: "Enter Addess",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text('Take Photo:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 28.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 90.0, width: 90.0,
                    // margin: EdgeInsets.only(right: 220),
                    padding: EdgeInsets.all(2),
                    // alignment: Alignment.center,
                    decoration: new BoxDecoration(color: Colors.blueAccent),
                    child: Center(
                      child: IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.camera,
                          color: Color.fromARGB(255, 8, 8, 8),
                        ),
                        iconSize: 70,
                        onPressed: null,
                      ),
                    ),
                  ),
                  Container(
                    height: 90.0, width: 90.0,
                    // margin: EdgeInsets.only(right: 220),
                    padding: EdgeInsets.all(2),
                    // alignment: Alignment.center,
                    decoration: new BoxDecoration(color: Colors.blueAccent),
                    child: Center(
                      child: IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.camera,
                          color: Color.fromARGB(255, 8, 8, 8),
                        ),
                        iconSize: 70,
                        onPressed: null,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 90.0, width: 90.0,
                    // margin: EdgeInsets.only(right: 220),
                    padding: EdgeInsets.all(2),
                    // alignment: Alignment.center,
                    decoration: new BoxDecoration(color: Colors.blueAccent),
                    child: Center(
                      child: IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.camera,
                          color: Color.fromARGB(255, 8, 8, 8),
                        ),
                        iconSize: 70,
                        onPressed: null,
                      ),
                    ),
                  ),
                  Container(
                    height: 90.0, width: 90.0,
                    // margin: EdgeInsets.only(right: 220),
                    padding: EdgeInsets.all(2),
                    // alignment: Alignment.center,
                    decoration: new BoxDecoration(color: Colors.blueAccent),
                    child: Center(
                      child: IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.camera,
                          color: Color.fromARGB(255, 8, 8, 8),
                        ),
                        iconSize: 70,
                        onPressed: null,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
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
                  onPressed: () {},
                  child: Text('Continue'),
                ),
              )
            ],
          ),
        ));
  }
}
