import 'package:flutter/material.dart';
import 'package:isit_restaurantes_app/widgets/button_purple.dart';
import 'package:isit_restaurantes_app/widgets/gradient_back.dart';

class FinalScreen extends StatefulWidget {
  static const String routeName = '/final';
  @override
  _FinalScreenState createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(),
          Container(
            margin: EdgeInsets.only(top: 80.0, left: 16.0),
            child: Text(
              "Tu pedido llegará aproximadamente en:",
              style: TextStyle(
                fontSize: 16.0,
                  fontFamily: "Fira Sans",
                color: Colors.white
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 120.0, left: 54.0),
              height: 74.0,
              width: 257.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  gradient: LinearGradient(
                      colors: [
                        Color(0xFFFFFFFF),
                        Color(0xFF808080)
                      ],
                      begin: FractionalOffset(0.8, 0.0),
                      end: FractionalOffset(1.0, 1.0),
                      stops: [0.1, 0.6],
                      tileMode: TileMode.clamp
                  )
              ),
              child: Container(
                  margin: EdgeInsets.all(18.0),
                  height: 37.0,
                  width: 214.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Color(0xFFD4D4D4)
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 8.0, left: 80.0),
                    child: Text(
                      "35 min",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "Fira Sans",
                      ),
                    ),
                  )
              )
          ),
          ButtonPurple(
            top: 240.0,
            left: 120.0,
            width: 120.0,
            height: 32.0,
            text: "Calificar",
            onPressed: (){
              Navigator.pushNamed(context, '/menu');
            },
          )
        ],
      ),
    );
  }
}
