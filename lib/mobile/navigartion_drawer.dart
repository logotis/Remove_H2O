import 'package:flutter/material.dart';
import 'package:remove_h2o/mobile/Screens/aboutus_screen.dart';
import 'package:remove_h2o/mobile/Screens/share_app.dart';
import 'package:remove_h2o/mobile/components/my_drawer_header.dart';
import 'package:remove_h2o/mobile/contactus/contactus_body.dart';
import 'package:remove_h2o/mobile/myInfo_screen/myInfo_Body.dart';

import 'Screens/home/components/body.dart';

class NavigationDrawer extends StatelessWidget {
  NavigationDrawer({Key? key}) : super(key: key);

  // final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyHeaderDrawer(),
              // SizedBox(height: 16.0),
              Container(
                  child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Column(
                  children: [
                    manuitems(
                      text: 'Home',
                      icon: Icons.dashboard_outlined,
                      onclick: () => Selecteditem(context, 1),
                    ),
                    const Divider(),
                    manuitems(
                      text: 'Contact Us',
                      icon: Icons.people_alt_outlined,
                      onclick: () => Selecteditem(context, 2),
                    ),
                    const Divider(),
                    manuitems(
                      text: 'About US',
                      icon: Icons.event,
                      onclick: () => Selecteditem(context, 3),
                    ),
                    const Divider(),
                    manuitems(
                      text: 'Share App',
                      icon: Icons.share,
                      onclick: () => Selecteditem(context, 4),
                    ),
                    const Divider(),
                    manuitems(
                      text: 'My Info',
                      icon: Icons.person_outlined,
                      onclick: () => Selecteditem(context, 5),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  Selecteditem(BuildContext context, int i) {
    switch (i) {
      case 1: // main screen
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Body()));
        break;
      case 2: //contact us screen
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ContactusBody()));
        break;
      case 3: //about us screen
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => abtpage()));
        break;
      case 4: // share app screen
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ShareApp()));
        break;
      case 5: // My Info screen
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Infoscreenbody()));
    }
  }
}

manuitems(
    {required String text,
    required IconData icon,
    required VoidCallback onclick}) {
  return ListTile(
    leading: Icon(
      icon,
      color: Colors.black,
    ),
    title: Text(
      text,
      style: const TextStyle(color: Colors.black),
    ),
    onTap: onclick,
  );
}
