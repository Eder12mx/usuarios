import 'package:flutter/material.dart';
import 'package:isit_restaurantes_app/widgets/gradient_back.dart';

class ProfileScreen extends StatefulWidget {
  static const String routeName = '/profile';
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage("assets/img/lio.JPG"),
                ),
                Text(
                  "Lionel Messi",
                  style: TextStyle(
                    fontFamily: "Fira Sans",
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "Valle de Santiago",
                  style: TextStyle(
                      fontFamily: "Fira Sans",
                      fontSize: 20.0,
                      color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 200,
                  child: Divider(
                    color: Color(0xFF00AA72),
                  ),
                ),
                Container(
                  color: Color(0xFFD6D6D6),
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        color: Color(0xFF0D58A6),
                      ),
                      SizedBox(
                        width: 24.0,
                      ),
                      Text(
                        "+ 52 456 123 4567",
                        style: TextStyle(
                          color: Color(0xFF0D58A6),
                          fontFamily: "Fira Sans",
                          fontSize: 20.0
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Color(0xFFD6D6D6),
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.credit_card,
                        color: Color(0xFF0D58A6),
                      ),
                      SizedBox(
                        width: 24.0,
                      ),
                      Text(
                        "**** **** **** 0987",
                        style: TextStyle(
                            color: Color(0xFF0D58A6),
                            fontFamily: "Fira Sans",
                            fontSize: 20.0
                        ),
                      ),
                      SizedBox(
                        width: 32.0,
                      ),
                      Text(
                        "12/23",
                        style: TextStyle(
                            color: Color(0xFF0D58A6),
                            fontFamily: "Fira Sans",
                            fontSize: 16.0
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
