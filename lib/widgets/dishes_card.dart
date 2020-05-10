import 'package:flutter/material.dart';

class DishesCard extends StatelessWidget {

  final String pathImage;
  final String name;
  final String description;

  DishesCard(this.pathImage, this.name, this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/selection');
        },
        child: Card(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)),
          elevation: 3.0,
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height/4.0,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Image.asset(
                        pathImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 7.0),

              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Fira Sans",
                      fontWeight: FontWeight.w800,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),

              SizedBox(height: 9.0),

              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 24.0,
                  child: Text(
                    description,
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Fira Sans",
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      )
    );
  }
}
