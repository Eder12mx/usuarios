import 'package:flutter/material.dart';
import 'package:isit_restaurantes_app/widgets/dishes_card.dart';
import 'package:isit_restaurantes_app/widgets/gradient_back.dart';

class DishesScreen extends StatefulWidget {
  static const String routeName = '/dishes';
  @override
  _DishesScreenState createState() => _DishesScreenState();
}

class _DishesScreenState extends State<DishesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(),
          Padding(
            padding: EdgeInsets.only(top: 8.0, bottom: 5.0),
            child: Container(
                child: ListView(
                  children: <Widget>[
                    DishesCard(
                        "assets/img/food2.jpeg",
                        "Tacos",
                        "Al pastor, suadero, tripa, bistec"
                    ),
                    DishesCard(
                        "assets/img/food5.jpeg",
                        "Hamburguesas",
                        "Deliciosas hamburguesas gourmet"
                    ),
                    DishesCard(
                        "assets/img/food7.jpeg",
                        "Pizzas",
                        "Lo mejor de lo mejor en pizzas"
                    ),
                    DishesCard(
                        "assets/img/food6.jpeg",
                        "Cortes de carne",
                        "Selectos cortes de carne americanos y jugosos"
                    ),
                    DishesCard(
                        "assets/img/food4.jpeg",
                        "Ensaladas",
                        "Disfruta el mejor sabor de la naturaleza"
                    ),
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}

