import 'package:flutter/material.dart';
import 'package:remove_h2o/size_config.dart';

class Financescreen extends StatelessWidget {
  const Financescreen({Key? key}) : super(key: key);

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
      body: Center(
        child: Container(
          child: Text('there is no data is present'),
        ),
      ),
    );
  }
}
