import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Infopage extends StatelessWidget { final String text;
final IconData icon;
final VoidCallback? press;
const Infopage({Key? key,required this.text,
  required this.icon,
  this.press,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric( horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.black,
                padding: EdgeInsets.all(8),
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                backgroundColor: Colors.grey[200],
              ),
              onPressed:press,
              child: Row(
                children: [
                  IconButton(
                    icon:FaIcon(icon,color: Color.fromARGB(255, 8, 8, 8),),
                    iconSize: 30,onPressed: null,
                  ),
                  SizedBox(width: 20),
                  Expanded(child: Text(text)),
                  Icon(Icons.arrow_forward, color: Colors.black,
                      size: 24.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
