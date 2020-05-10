import 'package:flutter/material.dart';
import 'package:isit_restaurantes_app/widgets/gesture_detector_card.dart';
import 'package:isit_restaurantes_app/widgets/gradient_back.dart';

class SelectionList extends StatefulWidget {
  static const String routeName = '/selection';
  @override
  _SelectionListState createState() => _SelectionListState();
}

class _SelectionListState extends State<SelectionList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(),
          Column(
            children: <Widget>[
              GestureDetectorCard(
                onPressed: () {
                  Navigator.pushNamed(context, '/delivery');
                },
                pathImage: "assets/img/pepperoni-jalapeno-pizza.jpg",
                name: "Pizza Mexicana",
                shortName: "RUSH PIZZA",
                description: "Jalapeño y queso",
                city: "4.8",
                price: "99.90",
              ),
              GestureDetectorCard(
                onPressed: () {
                  Navigator.pushNamed(context, '/delivery');
                },
                pathImage: "assets/img/pepperoni-jalapeno-pizza.jpg",
                name: "Pizza Mexicana",
                shortName: "PIZZA DIBALA",
                description: "Jalapeño, frijoles, chorizo y queso",
                city: "4.2",
                price: "199.90",
              ),
              GestureDetectorCard(
                onPressed: () {
                  Navigator.pushNamed(context, '/delivery');
                },
                pathImage: "assets/img/pepperoni-jalapeno-pizza.jpg",
                name: "Pizza Mexicana",
                shortName: "PIZZA MARCELLA",
                description: "Jalapeño, chorizo y queso",
                city: "3.9",
                price: "159.90",
              ),
            ],
          )
        ],
      ),
    );
  }
}
