import 'package:flutter/material.dart';
import 'package:isit_restaurantes_app/widgets/delivery_card.dart';
import 'package:isit_restaurantes_app/widgets/gradient_back.dart';

class FilterList extends StatefulWidget {
  static const String routeName = '/filter';
  @override
  _FilterListState createState() => _FilterListState();
}

class _FilterListState extends State<FilterList> {
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
                    DeliveryCard(
                        "assets/img/mapsmania2.gif",
                        "La Curandería",
                        "\$40"
                    ),
                    DeliveryCard(
                        "assets/img/mapsmania2.gif",
                        "La Baguetería",
                        "\$40"
                    ),
                    DeliveryCard(
                        "assets/img/mapsmania2.gif",
                        "Los Abuelos",
                        "\$40"
                    ),
                    DeliveryCard(
                        "assets/img/mapsmania2.gif",
                        "Mr. Dogxs",
                        "\$40"
                    ),
                    DeliveryCard(
                        "assets/img/mapsmania2.gif",
                        "Dolchevita",
                        "\$40"
                    ),
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}
