// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:remove_h2o/mobile/size_config.dart';
import 'package:remove_h2o/mobile/ushome/user_nav_drawer.dart';

// String appbarlogo = '';
// String workvendor = '';
// String imagevendor = '';

class userabtpage extends StatefulWidget {
  @override
  State<userabtpage> createState() => _abtpageState();
}

class _abtpageState extends State<userabtpage> {
  // void getdata() {
  //   FirebaseFirestore.instance
  //       .collection('Vendor Data')
  //       .where('docId', isEqualTo: auth.currentUser!.uid)
  //       .get()
  //       .then((QuerySnapshot querySnapshot) {
  //     querySnapshot.docs.forEach((doc) {
  //       setState(() {
  //         // print(doc['workadress']);
  //         appbarlogo = doc['logo'];
  //         workvendor = doc['workadress'];
  //         imagevendor = doc['imageUrl'];
  //       });
  //     });
  //   });
  // }

  // @override
  // void initState() {
  //   getdata();
  //   super.initState();
  // }

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
        title: Image.asset(
          "assets/images/logo.png",
          height: getProportionateScreenHeight(270),
        ),
        // title: Text(appbarlogo.toString(), style: TextStyle(color: Colors.amber),),
        // title: appbartitle.isEmpty"assets/images/logo.png",
        //   height: getProportionateScreenHeight(270),
        // ?Image.asset(
        //
        // )
        // : Image.network(appbartitle,
        // ),
      ),
      drawer: UserNavigationDrawer(),
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
                      Navigator.of(context).pop();
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
              // imagevendor.isEmpty
              //     ?
              Container(
                height: 200.0,
                width: 320.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/ambulance.jpg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
              // : Container(
              //     height: 200.0,
              //     width: 320.0,
              //     decoration: BoxDecoration(
              //       image: DecorationImage(
              //         image: NetworkImage(imagevendor),
              //         fit: BoxFit.fill,
              //       ),
              //       shape: BoxShape.rectangle,
              //     ),
              //   ),
              // workvendor.isEmpty
              //     ?
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <TextSpan>[
                    //TextSpan(text: '', style: TextStyle(color: Colors.blue)),
                    TextSpan(
                        text:
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently  desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'),
                  ],
                ),
              )
              // : RichText(
              //     text: TextSpan(
              //       style: TextStyle(color: Colors.black, fontSize: 16),
              //       // ignore: prefer_const_literals_to_create_immutables
              //       children: <TextSpan>[
              //         //TextSpan(text: '', style: TextStyle(color: Colors.blue)),
              //         TextSpan(text: workvendor),
              //       ],
              //     ),
              //   )
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(
      //         context, MaterialPageRoute(builder: (_) => AboutDetail()));
      //   },
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
