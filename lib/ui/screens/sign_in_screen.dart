import 'package:flutter/material.dart';
import 'package:isit_restaurantes_app/widgets/button_green.dart';
import 'package:isit_restaurantes_app/widgets/button_purple_registration.dart';
import 'package:isit_restaurantes_app/widgets/gradient_back.dart';

class SignInScreen extends StatefulWidget {
  static const String routeName = '/login';
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(),
          ButtonGreen(
            text: "Login with Google",
            onPressed: (){
              Navigator.pushNamed(context, '/menu');
            },
            width: 296.0,
            height: 56.0,
          ),
          ButtonPurpleRegistration()
        ],
      ),
    );
  }
}
