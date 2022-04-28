import 'package:flutter/material.dart';
import 'package:remove_h2o/size_config.dart';
import 'package:remove_h2o/userlist_buttons/revoke_users.dart';

class RevokeuserBody extends StatelessWidget {
  const RevokeuserBody({Key? key}) : super(key: key);

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
        body:

            // SingleChildScrollView(
            //     physics: BouncingScrollPhysics(),
            //     padding: EdgeInsets.symmetric(vertical: 20),
            //     child:

            ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 16,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 2.0, bottom: 1),
                          child: Icon(Icons.arrow_back_ios, size: 18),
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 1.0,
            ),
            SizedBox(height: 10),
            Revokeuser(
              // email: '',
              // fname: "",
              // lname: '',
              // phoneNo: '',
              text: "Parrot Sab",
              press: () => {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    elevation: 24.0,
                    backgroundColor: Colors.white,
                    title: Text("NAME : Parrot Sab"),
                    content: Text("Do you want to give access"),
                    actions: <Widget>[
                      FlatButton(
                        child: Text("No"),
                        onPressed: () => Navigator.pop(context),
                      ),
                      FlatButton(
                        child: Text("Yes"),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                ),
              },
            ),
          ],
        )

        // ),
        );
  }
}
