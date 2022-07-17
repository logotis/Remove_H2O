import 'package:flutter/material.dart';

class ApprovedUsers extends StatelessWidget {
  const ApprovedUsers({Key? key, required this.text}) : super(key: key);
  final String text;

  // final VoidCallback? press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.black,
          padding: EdgeInsets.all(30),
          textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Colors.grey[200],
        ),
        onPressed: () {},
        child: Row(
          children: [
            // IconButton(
            //   icon: FaIcon(
            //     icon,
            //     color: Color.fromARGB(255, 8, 8, 8),
            //   ),
            //   iconSize: 40,
            //   onPressed: null,
            // ),
            CircleAvatar(
              radius: (30),
              backgroundColor: Colors.white,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset("assets/images/Profile Image.png"),
              ),
            ),
            SizedBox(width: 20),
            Expanded(child: Text(text)),
            // Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
