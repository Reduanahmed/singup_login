import 'package:flutter/material.dart';
import 'package:myapp/utils/All_color.dart';

class CustomTextField extends StatefulWidget {
  String hinText;
  String labelText;
  TextEditingController controller;
  bool obsecureVal;
  CustomTextField({
    Key? key,
    required this.labelText,
    required this.hinText,
    required this.controller,
    required this.obsecureVal,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

AllColor allColor = AllColor();
var passStore = "";

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 30.0, right: 30.0),
        child: TextFormField(
          validator: (value) {
            bool emailValid = RegExp(
                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(value!);

            if (value!.isEmpty) {
              return "This field ccant not be emtpy";
            }
            if (widget.labelText == "Email") {
              if (!emailValid) {
                return "Please correct your Email";
              }
            }
            if (widget.labelText == "Password") {
              passStore = value;
              if (value.length < 8) {
                return "You must be add 8 carrecter";
              }
            }
            if (widget.labelText == "Confirm Password") {
              if (passStore != value) {
                return "Your Password didn't match!";
              }
            }
          },
          obscureText: widget.obsecureVal,
          controller: widget.controller,
          cursorColor: allColor.FildColor,
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: allColor.FildColor),
                  borderRadius: BorderRadius.circular(15)),
              labelText: widget.labelText,
              labelStyle: TextStyle(
                color: allColor.FildColor,
              ),
              hintText: widget.hinText,
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: allColor.FildColor,
                  ),
                  borderRadius: BorderRadius.circular(15))),
        ));
  }
}
