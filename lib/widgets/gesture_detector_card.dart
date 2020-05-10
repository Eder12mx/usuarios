import 'package:flutter/material.dart';

class GestureDetectorCard extends StatefulWidget {

  final VoidCallback onPressed;
  final String pathImage;
  final String name;
  final String shortName;
  final String description;
  final String city;
  final String price;

  GestureDetectorCard({Key key, this.onPressed, this.pathImage, this.name, this.shortName, this.description, this.city, this.price});

  @override
  _GestureDetectorCardState createState() => _GestureDetectorCardState();
}

class _GestureDetectorCardState extends State<GestureDetectorCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24.0),
      child: SizedBox(
        height: 150.0,
        child: GestureDetector(
          onTap: widget.onPressed,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: Container(
              padding: EdgeInsets.only(
                  top: 16.0,
                  left: 8.0,
                  right: 8.0,
                  bottom: 8.0
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage(widget.pathImage),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(Color.fromARGB(100, 0, 0, 0), BlendMode.hardLight)
                  )
              ),
              child: Stack(
                children: <Widget>[
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            widget.name,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Fira Sans",
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            widget.shortName,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Fira Sans",
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            widget.description,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Fira Sans",
                              fontSize: 8.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.0, bottom: 3.0),
                          child: Text(
                            widget.city,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Fira Sans",
                                fontSize: 12.0
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.attach_money,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.0, bottom: 3.0),
                          child: Text(
                            widget.price,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Fira Sans",
                                fontSize: 12.0
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
