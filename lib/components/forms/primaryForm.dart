import 'package:avanapp/helper/preferences.dart';
import 'package:flutter/material.dart';

class PrimaryForm extends StatelessWidget {
  String label;
  TextEditingController controller;
  int maxLines;
  bool obscured;
  IconData prefixIcon;
  PrimaryForm(this.label, this.controller, this.maxLines, this.obscured,
      this.prefixIcon);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: whitegrey,
        borderRadius: BorderRadius.circular(16.0),
      ),
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: TextFormField(
          textAlignVertical: TextAlignVertical.center,
          obscureText: obscured,
          maxLines: maxLines,
          controller: controller,
          style: TextStyle(color: mainColor, fontSize: 16.0),
          decoration: InputDecoration(
            hoverColor: Colors.transparent,
            fillColor: whitegrey,
            prefix: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(
                prefixIcon,
                color: secondColor,
              ),
            ),
            filled: true,
            labelText: label,
            floatingLabelStyle: TextStyle(color: Colors.transparent),
            labelStyle: TextStyle(color: secondColor),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
