import 'package:flutter/material.dart';
import 'package:remove_h2o/mobile/size_config.dart';

class MyHeaderDrawer extends StatefulWidget {
  @override
  MyHeaderDrawerState createState() => MyHeaderDrawerState();
}

class MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      height: 140,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // appbarlogo.isNotEmpty
          //     ? Container(
          //         margin: const EdgeInsets.only(
          //           bottom: 10.0,
          //         ),
          //         height: getProportionateScreenHeight(70),
          //         decoration: BoxDecoration(
          //           image: DecorationImage(
          //             fit: BoxFit.cover,
          //             image: NetworkImage(appbarlogo),
          //           ),
          //         ),
          //       )
          //     :
          Container(
            margin: const EdgeInsets.only(
              bottom: 10.0,
            ),
            height: getProportionateScreenHeight(70),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/logo.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
