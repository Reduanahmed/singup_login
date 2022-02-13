import 'package:flutter/material.dart';
import 'package:myapp/screen/log_in.dart';
import 'package:myapp/utils/All_color.dart';

class CustomButton extends StatefulWidget {
  double height;
  double width;
  String buttonText;
  CustomButton({
    Key? key,
    required this.height,
    required this.width,
    required this.buttonText,
  }) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

AllColor _allColor = AllColor();

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
          color: allColor.FildColor, borderRadius: BorderRadius.circular(15)),
      child: Center(
          child: Text(widget.buttonText,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold))),
    );
  }
}
