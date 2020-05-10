import 'package:flutter/material.dart';

class ButtonPurpleRegistration extends StatefulWidget {
  @override
  _ButtonPurpleRegistrationState createState() => _ButtonPurpleRegistrationState();
}

class _ButtonPurpleRegistrationState extends State<ButtonPurpleRegistration> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/menu');
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 260.0,
          left: 32.0,
        ),
        width: 296,
        height: 56,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: LinearGradient(
                colors: [
                  Color (0xFF4268D3),
                  Color (0xFF0D58A6)
                ],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp

            )

        ),

        child: Center(
          child: Text(
            "Login with Facebook",
            style: TextStyle(
                fontSize: 18.0,
                fontFamily: "Fira Sans",
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),

          ),
        ),

      ),
    );
  }
}
