// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:remove_h2o/mobile/navigartion_drawer.dart';
import 'package:remove_h2o/mobile/size_config.dart';
import 'package:share_plus/share_plus.dart';

class SendReferral extends StatefulWidget {
  @override
  State<SendReferral> createState() => _SendReferralState();
}

class _SendReferralState extends State<SendReferral> {
  void SendFbData() {
    Share.share('www.facebook.com');
  }

  void SendTwData() {
    Share.share('www.twitter.com');
  }

  // final IconData icon;
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
      ),
      // appBar: AppBar(
      //   // automaticallyImplyLeading: false,
      //   iconTheme: IconThemeData(
      //     color: Colors.blue,
      //   ),
      //   toolbarHeight: 90,
      //   backgroundColor: Colors.white,
      //   brightness: Brightness.light,
      //   centerTitle: true,
      //   title: Image.asset(
      //     "assets/images/logo.png",
      //     height: getProportionateScreenHeight(270),
      //   ),
      // ),
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
              'Social Media:',
              style: TextStyle(
                color: Colors.black,
                fontSize: getProportionateScreenWidth(28),
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  // boxShadow: ,
                  color: Colors.grey[200],
                  // color: Color(0xFFF5F6F9),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                              onTap: SendFbData,
                              child: IconContainer(
                                  image: 'assets/icons/facebook-2.svg')),
                          SizedBox(
                            width: 20.0,
                          ),
                          GestureDetector(
                              onTap: SendTwData,
                              child: IconContainer(
                                  image: 'assets/icons/twitter.svg')),
                          SizedBox(
                            width: 20.0,
                          ),
                          IconContainer(image: 'assets/icons/google-icon.svg'),
                        ],
                      ),
                      // SizedBox(
                      //   height: 20.0,
                      // ),
                      // IconContainer(image: 'assets/icons/twitter.svg'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  final String image;

  const IconContainer({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        color: Color(0xFFffffff),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 35, width: 35, child: SvgPicture.asset(image)),
        ],
      ),
      // child: Image(
      //   height: 35,
      //   width: 35,
      //   image: AssetImage(image),),
    );
  }
}
