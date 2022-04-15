import 'package:flutter/material.dart';
import 'package:remove_h2o/Screens/sign_up/sign_up_screen.dart';
import 'package:remove_h2o/size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account? ",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignUpScreen()),
          ),
          child: Text(
            "Sign Up",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: const Color.fromARGB(255, 49, 126, 226),
                fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
