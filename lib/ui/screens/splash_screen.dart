import 'dart:async';
import 'package:flutter/material.dart';
import 'package:isit_restaurantes_app/widgets/gradient_back.dart';
import 'package:url_launcher/url_launcher.dart';


class SplashScreen extends StatefulWidget {
  static const String routeName = '';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String pathImage = "assets/img/logo_ISIT_colors.png";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(milliseconds: 5000), () => Navigator.pushNamed(context, '/login'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(),
          Container(
            margin: EdgeInsets.only(top: 120.0, left: 24.0, right: 24.0),
            height: 320,
            width: 320,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(pathImage),
                  )
              ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: FlatButton(
              textColor: Colors.white,
              onPressed: _launchURL,
              child: Text("www.isit.mx",
                style: TextStyle(
                  fontFamily: "Fira Sans",
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://www.isit.mx';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'No se puede abrir $url';
  }
}
