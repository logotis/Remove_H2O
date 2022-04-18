import 'package:flutter/material.dart';
import 'package:remove_h2o/constants.dart';
import 'package:remove_h2o/size_config.dart';

import 'otp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // CircleAvatar( backgroundColor: Colors.black,
              //   radius: 16,
              //   child: IconButton(onPressed: (){Navigator.pop(context);
              //   },  icon: Padding(
              //     padding: const EdgeInsets.only(left: 2.0,bottom: 1),
              //     child: Icon(Icons.arrow_back_ios,size: 18),
              //   ),)),
              Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.05),
                  Text(
                    "OTP Verification",
                    style: headingStyle,
                  ),
                  Text("We sent your code to +1 898 860 ***"),
                  buildTimer(),
                  OtpForm(),
                  SizedBox(height: SizeConfig.screenHeight * 0.1),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Resend OTP Code",
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (_, dynamic value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
          ),
        ),
      ],
    );
  }
}
