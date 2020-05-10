import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {

  final String hintText;
  final IconData prefixIcon;
  final TextInputType inputType;
  final TextEditingController controller;
  int maxLines = 1;
  final bool obscureText;

  TextInput({
    Key key,
    @required this.hintText,
    @required this.prefixIcon,
    @required this.inputType,
    @required this.controller,
    this.maxLines,
    this.obscureText
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20.0, left: 20.0),
      child: TextField(
        obscureText: obscureText,
        controller: controller,
        keyboardType: inputType,
        maxLines: maxLines,
        style: TextStyle(
            fontSize: 15.0,
            fontFamily: "Fira Sans",
            color: Colors.blueGrey,
            fontWeight: FontWeight.bold
        ),

        decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFD6D6D6),
            border: InputBorder.none,
            hintText: hintText,
            prefixIcon: Icon(prefixIcon, color: Color(0xFF0D58A6)),
            hintStyle: TextStyle(
              color: Color(0xFF0D58A6)
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFD6D6D6)),
                borderRadius: BorderRadius.all(Radius.circular(9.0))
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFD6D6D6)),
                borderRadius: BorderRadius.all(Radius.circular(9.0))
            )

        ),
      ),
    );
  }
}