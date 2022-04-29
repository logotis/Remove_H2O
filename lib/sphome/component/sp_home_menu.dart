import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SPHomeMenu extends StatelessWidget {
  const SPHomeMenu({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback? press;

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
        onPressed: press,
        child: Row(
          children: [ IconButton(
            icon:FaIcon(icon,color: Color.fromARGB(255, 8, 8, 8),),
            iconSize: 40,onPressed: null,
          ),
            // SvgPicture.asset(
            //   icon,
            //   color: Color.fromARGB(255, 8, 8, 8),
            //   width: 22,
            //   height: 80,
            // ),
            SizedBox(width: 20),
            Expanded(child: Text(text)),
           // Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
