import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:remove_h2o/Screens/home/Home_screen.dart';
import 'package:remove_h2o/myInfo_screen/my_info_screen.dart';
import 'package:remove_h2o/profileUpdate_appinfo/upgradeAddress.dart';
import 'package:remove_h2o/profileUpdate_appinfo/upgradeEmail.dart';
import 'package:remove_h2o/profileUpdate_appinfo/upgradeNumber.dart';
import 'package:remove_h2o/take_photo.dart';

class Infoscreenbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        child: Column(
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
              ),),
            SizedBox(height: 16),
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                      radius: (60),
                      backgroundColor: Colors.white,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset("assets/images/Profile Image.png"),
                      )),
                  Positioned(
                    bottom: 8,
                    right: 0,
                    child: Container(
                      height: 32.0,
                      width: 32.0,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 0.5),
                          shape: BoxShape.circle,color: Color(0xffffffff)),
                      child: IconButton(
                        icon:FaIcon(
                          FontAwesomeIcons.camera,
                          color: Color.fromARGB(255, 8, 8, 8),
                          size: 16,
                        ),
                        iconSize: 30,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>PhotoData()));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Infopage(
              text: "abc@gmail.com",
              icon:FontAwesomeIcons.envelopeOpen,
              press:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Emailupgrade()),);},
            ),
            Infopage(
              text: "123-456-789",
              icon:FontAwesomeIcons.phoneSquare,
              press:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Numberupgrade()));},
            ),
            Infopage(
              text: "Some street........",
              icon:FontAwesomeIcons.mapLocationDot,
              press:(){Navigator.push(context, MaterialPageRoute(builder: (context)=> AddressUpgrade()));},
            ),
            Infopage(
              text: "Log Out",
              icon:FontAwesomeIcons.signOut,
              press:(){},
            ),
          ],
        ),
      ),
    );
  }
}
