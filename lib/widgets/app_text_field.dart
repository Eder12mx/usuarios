import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String inputText;
  final bool obscureText;

  AppTextField(this.inputText, this.obscureText);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        hintText: inputText,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0))
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(
                color: Colors.black26,
                width: 2.0
            )
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            borderSide: BorderSide(
                color: Color (0xFF0D58A6),
                width: 2.0
            )
        ),
      ),
      textAlign: TextAlign.center,
      obscureText: obscureText == null ? false : obscureText,
    );
  }
}