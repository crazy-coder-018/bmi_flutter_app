// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  var myController = TextEditingController();

  final String hintText;
  final String labelText;
  final Icon icon;

  MyTextField({
    super.key,
    required this.myController,
    required this.hintText,
    required this.icon,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: SizedBox(
        width: 400,
        child: TextField(
          controller: myController,
          cursorColor: Colors.blue,
          cursorHeight: 22,
          keyboardType: TextInputType.numberWithOptions(),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(18),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            label: Text(labelText),
            labelStyle: TextStyle(fontSize: 14, color: Colors.blue),
            prefixIcon: icon,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.w200,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(12),
            ),
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
