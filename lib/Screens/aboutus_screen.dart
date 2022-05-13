// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:remove_h2o/Screens/home/Home_screen.dart';
import 'package:remove_h2o/aboutDetail.dart';
import 'package:remove_h2o/navigartion_drawer.dart';
import 'package:remove_h2o/size_config.dart';
import 'package:flutter/material.dart';

class abtpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.blue,
          ),
          toolbarHeight: 90,
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          centerTitle: true,
          title: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('Vendor Data')
                  .snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return Text('Something went wrong');
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Text("Loading");
                }

                return ListView(
                    shrinkWrap: true,
                    // itemCount: snapshot.data!.docs.length,
                    // itemBuilder: ((context, index) {
                    children:
                        snapshot.data!.docs.map((DocumentSnapshot document) {
                      Map<String, dynamic> data =
                          document.data()! as Map<String, dynamic>;

                      return Image.asset(data['logo']);
                    }).toList());
                //     return Text('nodata');
                //   }),
                // );
              })),
      drawer: NavigationDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Container(
          child: Column(
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
              SizedBox(
                height: 55.0,
              ),
              Text(
                'About Us:',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('Vendor Data')
                      .snapshots(),
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return Text('Something went wrong');
                    }

                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Text("Loading");
                    }

                    return ListView(
                        shrinkWrap: true,
                        // itemCount: snapshot.data!.docs.length,
                        // itemBuilder: ((context, index) {
                        children: snapshot.data!.docs
                            .map((DocumentSnapshot document) {
                          Map<String, dynamic> data =
                              document.data()! as Map<String, dynamic>;

                          return Column(
                            children: [
                              Container(
                                height: 200.0,
                                width: 320.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(data['imageUrl']),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: BoxShape.rectangle,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: <TextSpan>[
                                    //TextSpan(text: '', style: TextStyle(color: Colors.blue)),
                                    TextSpan(text: data['workadress']),
                                    //TextSpan(text: 'com', style: TextStyle(decoration: TextDecoration.underline))
                                  ],
                                ),
                              ),
                            ],
                          );
                        }).toList());
                    //     return Text('nodata');
                    //   }),
                    // );
                  })
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => AboutDetail()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
