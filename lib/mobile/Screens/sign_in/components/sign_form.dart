// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:remove_h2o/mobile/Screens/forgot_password/forgot_password_screen.dart';
import 'package:remove_h2o/mobile/components/custom_surfix_icon.dart';
import 'package:remove_h2o/mobile/components/embosed%20button.dart';
import 'package:remove_h2o/mobile/components/form_error.dart';

import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  SignForm(this.submitFunction);

  final void Function(
    String email,
    String password,
  ) submitFunction;

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController paswordcontroller = TextEditingController();
  bool remember = false;

  void trySubmit() {
    final isValid = _formKey.currentState!.validate();

    if (isValid) {
      _formKey.currentState!.save();
      widget.submitFunction(
        emailcontroller.text.trim(),
        paswordcontroller.text.trim(),
      );
    }
  }

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
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: Colors.red,
                onChanged: (value) {
                  setState(() {
                    remember = value!;
                    remember = remember;
                    print(remember);
                  });
                },
              ),
              Text(
                "Remember me",
                style: TextStyle(
                    color: Color.fromARGB(255, 49, 126, 226),
                    fontWeight: FontWeight.w600),
              ),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ForgotPasswordScreen()),
                ),
                child: Text(
                  "Forgot Password ?",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color.fromARGB(255, 49, 126, 226),
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          GreetButtonTwo(
            text: "Continue",
            press: () {
              trySubmit();
              // if all are valid then go to success screen
              // KeyboardUtil.hideKeyboard(context);
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty || value.length < 6) {
          return 'password must be at least 6 character.';
        }
        return null;
      },
      controller: paswordcontroller,
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty || !value.contains('@')) {
          return 'please enter a valid email adress.';
        }
        return null;
      },
      controller: emailcontroller,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomIcon(
          svgIcon: "assets/icons/Mail.svg",
        ),
      ),
    );
  }
}
