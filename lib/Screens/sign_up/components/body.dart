// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:remove_h2o/constants.dart';
// import 'package:remove_h2o/size_config.dart';

// import 'sign_up_form.dart';

// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: SizedBox(
//         width: double.infinity,
//         child: Padding(
//           padding:
//               EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 CircleAvatar(
//                     backgroundColor: Colors.black,
//                     radius: 16,
//                     child: IconButton(
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                       icon: Padding(
//                         padding: const EdgeInsets.only(left: 2.0, bottom: 1),
//                         child: Icon(Icons.arrow_back_ios, size: 18),
//                       ),
//                     )),
//                 Column(
//                   children: [
//                    // SizedBox(height: SizeConfig.screenHeight * 0.04), // 4%
//                     Text(
//                       "Sign Up",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(color: Colors.black45),
//                     ),
//                     SizedBox(height: 5),
//                     Text("Complete Profile", style: headingStyle),
//                     SizedBox(height: 10.0,),
//                     Text(
//                       "Complete your details or continue \nwith social media",
//                       textAlign: TextAlign.center,
//                     ),
//                     SizedBox(height: 5),
//                     SignUpForm(),
//                     SizedBox(height: 15),

//                     Text(
//                       'By continuing your confirm that you agree \nwith our Term and Condition',
//                       textAlign: TextAlign.center,
//                       style: Theme.of(context).textTheme.caption,
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
