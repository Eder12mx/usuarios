import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:isit_restaurantes_app/widgets/gradient_back.dart';

class MenuScreen extends StatefulWidget {
  static const String routeName = '/menu';

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 48.0, left: 32.0),
                child: SizedBox(
                  height: 45.0,
                  width: 45.0,
                  child: Text("ISIT",
                  style: TextStyle(
                    fontFamily: "Racing Sans One",
                    fontSize: 24.0,
                    color: Colors.white
                  ),
                 )
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 28.0, left: 24.0),
                child: SizedBox(
                    height: 24.0,
                    width: 24.0,
                    child: Icon(Icons.location_on,
                      color: Colors.white,
                    )
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 32.0),
                  child: Text("Valle de Santiago, Gto.",
                      style: TextStyle(
                          fontSize: 10.0,
                          fontFamily: "Fira Sans",
                          color: Colors.white
                      ),
                    )
              ),
              Container(
                margin: EdgeInsets.only(top: 32.0, right: 8.0, left: 32.0),
                child: FlatButton(
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/revision');
                  },
                ),
              )
            ],
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      height: 24,
                      width: 160,
                      child: TextField(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0
                        ),
                        controller: _messageController,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8.0))
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                borderSide: BorderSide(
                                    color: Color (0xFFD4D4D4),
                                    width: 2.0
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                borderSide: BorderSide(
                                    color: Color (0xFFD4D4D4),
                                    width: 2.0
                                )
                            ),
                            hintText: "¿Qué deseas hoy?",
                            hintStyle: TextStyle(
                                fontSize: 14.0,
                                fontFamily: "Fira Sans",
                                color: Colors.black45
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 48.0,
                      width: 56.0,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/selection');
                          _messageController.clear();
                        },
                        child: Icon(
                          Icons.send,
                          color: Colors.black54,
                          size: 20.0,
                        ),
                      )
                    )
                  ],
                )
              )
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFFF5700),
        notchMargin: 4.0,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: Icon(Icons.perm_identity, color: Colors.white),
            ),
            FlatButton(
              onPressed: (){
                Navigator.pushNamed(context, '/category');
              },
              child: Icon(Icons.search, color: Colors.white),
            ),
            FlatButton(
              onPressed: (){
                Navigator.pushNamed(context, '/filter');
              },
              child: Icon(Icons.filter_list, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
