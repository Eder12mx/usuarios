import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:isit_restaurantes_app/widgets/button_purple.dart';
import 'package:isit_restaurantes_app/widgets/gradient_back.dart';

class RevisionScreen extends StatefulWidget {
  static const String routeName = '/revision';
  @override
  _RevisionScreenState createState() => _RevisionScreenState();
}

class _RevisionScreenState extends State<RevisionScreen> {
  TextEditingController _messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: ListView(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(top: 24.0, left: 16.0),
                        height: 64.0,
                        width: 64.0,
                        child: Card(
                          color: Color(0xFF00AA72),
                          elevation: 8.0,
                          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)),
                          child: Image.asset(
                            "assets/img/pepperoni-jalapeno-pizza.jpg",
                            fit: BoxFit.cover,
                          ),
                        )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24.0, left: 16.0),
                      child: Center(
                        child: Text(
                          "Pizza Mexicana",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.0,
                              fontFamily: "Fira Sans"
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24.0, left: 16.0),
                      child: Center(
                        child: Text(
                          "\$99.90",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontFamily: "Fira Sans"
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24.0, left: 16.0),
                      child: Center(
                        child: Text(
                          "1",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontFamily: "Fira Sans"
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24.0, left: 16.0),
                      child: Center(
                        child: Text(
                          "\$99.90",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontFamily: "Fira Sans"
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(top: 24.0, left: 16.0),
                        height: 64.0,
                        width: 64.0,
                        child: Card(
                          color: Color(0xFF00AA72),
                          elevation: 8.0,
                          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)),
                          child: Image.asset(
                            "assets/img/uber-eats-logo-1.png",
                            fit: BoxFit.cover,
                          ),
                        )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24.0, left: 16.0),
                      child: Center(
                        child: Text(
                          "UberEats",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.0,
                              fontFamily: "Fira Sans"
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24.0, left: 16.0),
                      child: Center(
                        child: Text(
                          "\$40.00",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontFamily: "Fira Sans"
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24.0, left: 16.0),
                      child: Center(
                        child: Text(
                          "1",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontFamily: "Fira Sans"
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24.0, left: 16.0),
                      child: Center(
                        child: Text(
                          "\$40.00",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontFamily: "Fira Sans"
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(top: 24.0, left: 16.0),
                        height: 64.0,
                        width: 64.0,
                        child: Card(
                          color: Color(0xFF00AA72),
                          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)),
                          child: Center(
                            child: Text(
                              "Total",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Fira Sans",
                                  fontSize: 16.0
                              ),
                            ),
                          )
                        )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24.0, left: 16.0),
                      child: Center(
                        child: Text(
                          "",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.0,
                              fontFamily: "Fira Sans"
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24.0, left: 16.0),
                      child: Center(
                        child: Text(
                          "",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontFamily: "Fira Sans"
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24.0, left: 16.0),
                      child: Center(
                        child: Text(
                          "",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontFamily: "Fira Sans"
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24.0, left: 16.0),
                      child: Center(
                        child: Text(
                          "\$139.90",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontFamily: "Fira Sans"
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right: 100.0),
                  child: ButtonPurple(
                    top: 48.0,
                    left: 120.0,
                    width: 120.0,
                    height: 32.0,
                    text: "Pagar",
                    onPressed: (){
                      Navigator.pushNamed(context, '/pay');
                    },
                  ),
                ),
              ],
            ),
          ),
       ],
     ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        elevation: 48.0,
        tooltip: "agregar",
        onPressed: () {
          Navigator.pushNamed(context, '/menu');
        },
        backgroundColor: Color(0xFF0D58A6),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 28.0,
        ),
      ),
   );
  }
}