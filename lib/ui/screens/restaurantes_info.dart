import 'package:flutter/material.dart';
import 'package:isit_restaurantes_app/widgets/dishes_card.dart';
import 'package:isit_restaurantes_app/widgets/gradient_back.dart';

class RestaurantesInfo extends StatefulWidget {
  static const String routeName = '/info';
  @override
  _RestaurantesInfoState createState() => _RestaurantesInfoState();
}

class _RestaurantesInfoState extends State<RestaurantesInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(),
          Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Container(
              child: ListView(
                children: <Widget>[
                  DishesCard(
                      "assets/img/abuelos.jfif",
                      "Quesadillas de salpicón, frijoles, deshebrada, rajas, nopales, chicharrón, picadillo, chipotle",
                      "\$16.00"
                  ),
                  DishesCard(
                      "assets/img/abuelos.jfif",
                      "Gorditas de salpicón, frijoles, deshebrada, rajas, nopales, chicharrón, picadillo, chipotle",
                      "\$16.00"
                  ),
                  DishesCard(
                      "assets/img/abuelos.jfif",
                      "Tostadas de salpicón, frijoles, deshebrada, rajas, nopales, chicharrón, picadillo, chipotle",
                      "\$16.00"
                  ),
                  DishesCard(
                      "assets/img/abuelos.jfif",
                      "Largas de salpicón, frijoles, deshebrada, rajas, nopales, chicharrón, picadillo, chipotle",
                      "\$50.00"
                  ),
                  DishesCard(
                      "assets/img/abuelos.jfif",
                      "Boing de fresa, mango , guayaba",
                      "\$16.00"
                  ),
                  DishesCard(
                      "assets/img/abuelos.jfif",
                      "Café de olla",
                      "\$14.00"
                  ),
                  DishesCard(
                      "assets/img/abuelos.jfif",
                      "Refresco de lata",
                      "\$14.00"
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
