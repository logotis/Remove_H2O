import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:remove_h2o/Screens/home/Home_screen.dart';
import 'package:remove_h2o/contactus/contactus_screen.dart';
import 'package:remove_h2o/size_config.dart';

class ContactusBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
      child: Column(
       // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar( backgroundColor: Colors.black,
            radius: 16,
              child: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
                },  icon: Padding(
                padding: const EdgeInsets.only(left: 2.0,bottom: 1),
                child: Icon(Icons.arrow_back_ios,size: 18),
              ),)),
          SizedBox(height: 55),
          Text('Contact Us:',
          style:TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(28),
            fontWeight: FontWeight.bold,
          )),
          SizedBox(height: 20),
          ctspage(
            text: "Theodore Lowe",
            icon:FontAwesomeIcons.mapLocationDot,
            press:null,
          ),
          ctspage(
            text: "123-456-789",
            icon:FontAwesomeIcons.phone,
            press:null,
          ),
          ctspage(
            text: "www.abc.com",
            icon:FontAwesomeIcons.globe,
            press:null,
          ),
        ],
      ),
    );
  }
}