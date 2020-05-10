import 'package:flutter/material.dart';
import 'package:isit_restaurantes_app/widgets/gesture_detector_card.dart';
import 'package:isit_restaurantes_app/widgets/gradient_back.dart';

class DeliveryScreen extends StatefulWidget {
  static const String routeName = '/delivery';

  @override
  _DeliveryScreenState createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(),
          ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  GestureDetectorCard(
                    onPressed: () {
                      Navigator.pushNamed(context, '/revision');
                    },
                    pathImage: "assets/img/logo.png",
                    name: "Uxpres",
                    shortName: "",
                    description: "",
                    city: "4.8",
                    price: "35",
                  ),
                  GestureDetectorCard(
                    onPressed: () {
                      Navigator.pushNamed(context, '/revision');
                    },
                    pathImage: "assets/img/logo-snippet.png",
                    name: "SinDelantal",
                    shortName: "",
                    description: "",
                    city: "4.3",
                    price: "30",
                  ),
                  GestureDetectorCard(
                    onPressed: () {
                      Navigator.pushNamed(context, '/revision');
                    },
                    pathImage: "assets/img/uber-eats-logo-1.png",
                    name: "UberEats",
                    shortName: "",
                    description: "",
                    city: "4.7",
                    price: "40",
                  ),
                  GestureDetectorCard(
                    onPressed: () {
                      Navigator.pushNamed(context, '/revision');
                    },
                    pathImage: "assets/img/Rappi_backgr_logo.png",
                    name: "Rappi",
                    shortName: "",
                    description: "",
                    city: "4.4",
                    price: "40",
                  ),
                  GestureDetectorCard(
                    onPressed: () {
                      Navigator.pushNamed(context, '/revision');
                    },
                    pathImage: "assets/img/guantes-dedo-corto-moto-y-de-usos-multiples-D_NQ_NP_797505-MLA25043007678_092016-O.jpg",
                    name: "Moto Expres",
                    shortName: "",
                    description: "",
                    city: "3.8",
                    price: "30",
                  ),
                  GestureDetectorCard(
                    onPressed: () {
                      Navigator.pushNamed(context, '/revision');
                    },
                    pathImage: "assets/img/PAGINA_DE_ATERRIZAJE__2_.jpg",
                    name: "Aluxe",
                    shortName: "",
                    description: "",
                    city: "3.7",
                    price: "30",
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}



