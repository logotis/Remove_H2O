// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:remove_h2o/Screens/otp/otp_screen.dart';
import 'package:remove_h2o/components/custom_surfix_icon.dart';
import 'package:remove_h2o/components/embosed%20button.dart';
import 'package:remove_h2o/components/form_error.dart';

import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  SignUpForm(this.submitFn);

  final void Function(
    String email,
    String fname,
    
    String lname,
    String phoneNo,
    
    String password,
  ) submitFn;

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  // String? fname;
  // String? lname;
  // String? phoneNo;
  // String? email;
  // String? password;

  TextEditingController econtroller = TextEditingController();
  TextEditingController fcontroller = TextEditingController();
  TextEditingController lcontroller = TextEditingController();
  TextEditingController pcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();


  void trySubmit() {
    final isValid = _formKey.currentState!.validate();

    if (isValid) {
      _formKey.currentState!.save();
      widget.submitFn(
        econtroller.text.trim(),
        fcontroller.text.trim(),
        lcontroller.text.trim(),
        pcontroller.text.trim(),
        passwordcontroller.text.trim(),
      );
      print(fcontroller);
      print(lcontroller);
      print(econtroller);
      print(pcontroller);
      print(passwordcontroller);
    }
  }

  // String? email;
  // String? password;
  // String? conform_password;
  // bool remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          buildfnameFormField(),
          SizedBox(height: getProportionateScreenHeight(15)),
          buildlastnameFormField(),
          SizedBox(height: getProportionateScreenHeight(15)),
          buildphonenumberFormField(),
          SizedBox(height: getProportionateScreenHeight(15)),
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(15)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(15)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(15)),
          GreetButtonTwo(
            text: "Continue",
            press: trySubmit,
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
     controller: passwordcontroller,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter Your Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: econtroller,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter Your Email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
     
    );
  }

  TextFormField buildfnameFormField() {
    return TextFormField(
     controller: fcontroller,
      decoration: InputDecoration(
        labelText: "First Name",
        hintText: "Enter your First Name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomIcon(svgIcon: "assets/icons/User Icon.svg"),
      ),
    );
  }

  TextFormField buildphonenumberFormField() {
    return TextFormField(
     controller: pcontroller,
      decoration: InputDecoration(
        labelText: "Phone#",
        hintText: "Enter your Phone#",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomIcon(svgIcon: "assets/icons/Phone.svg"),
      ),
    );
  }

  TextFormField buildlastnameFormField() {
    return TextFormField(
      controller: lcontroller,
      decoration: InputDecoration(
        labelText: "Last Name",
        hintText: "Enter your Last Name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomIcon(svgIcon: "assets/icons/User Icon.svg"),
      ),
    );
  }
}
