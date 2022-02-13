// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Apps_Helper/custom_button.dart';
import 'package:myapp/Apps_Helper/custom_text_field.dart';
import 'package:myapp/screen/signup_Page.dart';
import 'package:myapp/utils/All_color.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'homepage.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

TextEditingController _emailcontroller = TextEditingController();
TextEditingController _passcontroller = TextEditingController();
AllColor allColor = AllColor();
final GlobalKey<FormState> _formkey = GlobalKey();

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.facebook,
              size: 80,
              color: allColor.FildColor,
            ),
            SizedBox(
              height: 50,
            ),
            CustomTextField(
              labelText: "Email",
              hinText: "Enter your Mail",
              obsecureVal: false,
              controller: _emailcontroller,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              labelText: "Password",
              hinText: "Enter your Pass",
              obsecureVal: true,
              controller: _passcontroller,
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                if (_formkey.currentState!.validate()) {
                  if (_emailcontroller.text == "am@gmail.com" &&
                      _passcontroller.text == "am@gmail.com") {
                    Fluttertoast.showToast(msg: "LogIn Successfully");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  } else {
                    Fluttertoast.showToast(msg: "Log In Unsuccessfull");
                  }
                }
              },
              child: CustomButton(
                width: 420,
                height: 60,
                buttonText: "LogIn",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?  "),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SingUp()));
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
