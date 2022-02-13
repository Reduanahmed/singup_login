import 'package:flutter/material.dart';
import 'package:myapp/Apps_Helper/custom_button.dart';
import 'package:myapp/Apps_Helper/custom_text_field.dart';
import 'package:myapp/screen/log_in.dart';
import 'package:myapp/utils/All_color.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

TextEditingController _emailcontroller = TextEditingController();
TextEditingController _passcontroller = TextEditingController();
TextEditingController _Confirm_passcontroller = TextEditingController();
AllColor allColor = AllColor();
final GlobalKey<FormState> _formkey = GlobalKey();

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
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
              CustomTextField(
                labelText: "Confirm Password",
                hinText: "Confirm your Password",
                obsecureVal: true,
                controller: _Confirm_passcontroller,
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  if (_formkey.currentState!.validate())
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LogIn()));
                },
                child: CustomButton(
                  width: 420,
                  height: 60,
                  buttonText: "SignUp",
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
