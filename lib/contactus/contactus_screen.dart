import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ctspage extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? press;
  const ctspage({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: TextButton(
            style: TextButton.styleFrom(
              primary: Colors.black,
              padding: EdgeInsets.all(30),
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              backgroundColor: Colors.grey[200],
            ),
            onPressed: press,
            child: Row(
              children: [
                IconButton(
                  icon: FaIcon(
                    icon,
                    color: Color.fromARGB(255, 8, 8, 8),
                  ),
                  iconSize: 30,
                  onPressed: null,
                ),
                SizedBox(width: 20),
                Expanded(child: Text(text)),
                //  Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
