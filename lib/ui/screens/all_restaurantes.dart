import 'package:flutter/material.dart';
import 'package:isit_restaurantes_app/widgets/gesture_detector_card.dart';
import 'package:isit_restaurantes_app/widgets/gradient_back.dart';

class AllRestaurantes extends StatefulWidget {
  static const String routeName = '/all';
  @override
  _AllRestaurantesState createState() => _AllRestaurantesState();
}

class _AllRestaurantesState extends State<AllRestaurantes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(),
          ListView(
            children: <Widget>[
              GestureDetectorCard(
                onPressed: () {
                  Navigator.pushNamed(context, '/info');
                },
                pathImage: "assets/img/pepperoni-jalapeno-pizza.jpg",
                name: "RUSH PIZZA",
                shortName: "Pizza en segundos",
                description: "",
                city: "4.8",
                price: "",
              ),
              GestureDetectorCard(
                onPressed: () {
                  Navigator.pushNamed(context, '/info');
                },
                pathImage: "assets/img/pepperoni-jalapeno-pizza.jpg",
                name: "PIZZA DIBALA",
                shortName: "Velicidad DiBala",
                description: "",
                city: "4.2",
                price: "",
              ),
              GestureDetectorCard(
                onPressed: () {
                  Navigator.pushNamed(context, '/info');
                },
                pathImage: "assets/img/pepperoni-jalapeno-pizza.jpg",
                name: "PIZZA PATRÓN",
                shortName: "Más pizza, menos dinero",
                description: "",
                city: "3.9",
                price: "",
              ),
            ],
          )
        ],
      ),
    );
  }
}
