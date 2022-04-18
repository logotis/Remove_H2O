import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:remove_h2o/Screens/home/Home_screen.dart';
import 'package:remove_h2o/size_config.dart';

class ReportEmergency extends StatelessWidget {
  const ReportEmergency({Key? key}) : super(key: key);

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
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 16,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 2.0, bottom: 1),
                        child: Icon(Icons.arrow_back_ios, size: 18),
                      ),
                    )),
                SizedBox(height: 55),
                Text(
                  'Call Us:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    height: 280,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      // boxShadow: ,
                      color: Colors.grey[200],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40.0,
                        ),
                        Text(
                          '123-456-789',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 55.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 45.0,
                        ),
                        ElevatedButton(
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
                          child: Text('Call us'),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Did u mean?',
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(14),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 60.0,
                ),
                Text(
                  'Copyright © 2022 Rational Ambulance.',
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(14),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'All rights reserved.',
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(14),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
