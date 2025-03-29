// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyTextField2 extends StatelessWidget {
  var myController2 = TextEditingController();

  final String hintText;
  final String labelText;
  final Icon icon;

  MyTextField2({
    super.key,
    required this.myController2,
    required this.hintText,
    required this.icon,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: SizedBox(
        // Text field max size
        width: 400,

        // Text Field
        child: TextField(
          // Text Field Controller
          controller: myController2,

          // Text Field Cursor Color
          cursorColor: Colors.blue,

          // Text Field Cursor height
          cursorHeight: 22,

          // Text Field Key board input type
          keyboardType: TextInputType.numberWithOptions(),

          // Text Field Decoration
          decoration: InputDecoration(
            // Padding between contents
            contentPadding: EdgeInsets.all(18),

            // Label Behavior always on top of the text field
            floatingLabelBehavior: FloatingLabelBehavior.always,

            // Label Text
            label: Text(labelText),

            // Label Text Style
            labelStyle: TextStyle(fontSize: 14, color: Colors.blue),

            // Prefix Icon which is on left side of the text field
            prefixIcon: icon,

            // Hint Text
            hintText: hintText,

            // Hint Text Style
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),

            // Enabled Border
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(12),
            ),

            // Focused Border
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}
