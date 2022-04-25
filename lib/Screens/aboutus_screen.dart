// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:remove_h2o/Screens/home/Home_screen.dart';
import 'package:remove_h2o/size_config.dart';

class abtpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            SizedBox(height: 55.0,),
            Text(
              'About Us:',
              style: TextStyle(
                color: Colors.black,
                fontSize: getProportionateScreenWidth(28),
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 200.0,
              width: 320.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/ambulance.jpg'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 16),
                // ignore: prefer_const_literals_to_create_immutables
                children: <TextSpan>[
                  //TextSpan(text: '', style: TextStyle(color: Colors.blue)),
                  TextSpan(text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently  desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'),
                  //TextSpan(text: 'com', style: TextStyle(decoration: TextDecoration.underline))
                ],
              ),
            )
          ],

        )
      ),
    );
  }
}
