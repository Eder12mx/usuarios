import 'package:flutter/material.dart';
import 'package:isit_restaurantes_app/widgets/button_purple.dart';
import 'package:isit_restaurantes_app/widgets/gradient_back.dart';
import 'package:isit_restaurantes_app/widgets/text_input.dart';



class PaymentScreen extends StatefulWidget {
  static const String routeName = '/pay';
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {

    final _controllerCreditPlace = TextEditingController();
    final _controllerDeathPlace = TextEditingController();
    final _controllerCvvPlace = TextEditingController();

    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(),
          Container(
            margin: EdgeInsets.only(top: 24.0, bottom:24.0),
            child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top:20.0),
                  child: TextInput(
                    hintText: "Número de tarjeta",
                    prefixIcon: Icons.credit_card,
                    inputType: null,
                    maxLines: 1,
                    controller: _controllerCreditPlace,
                    obscureText: false,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:20.0),
                  child: TextInput(
                    prefixIcon: Icons.credit_card,
                    hintText: "Vencimiento",
                    inputType: null,
                    maxLines: 1,
                    controller: _controllerDeathPlace,
                    obscureText: false,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:20.0),
                  child: TextInput(
                    prefixIcon: Icons.credit_card,
                    obscureText: true,
                    hintText: "CVV",
                    inputType: null,
                    maxLines: 1,
                    controller: _controllerCvvPlace,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 120.0, top: 320.0),
            width: 120.0,
            child: ButtonPurple(
              top: 8.0,
              left: 16.0,
              width: 120.0,
              height: 32.0,
              text: "Comprar",
              onPressed: (){
                Navigator.pushNamed(context, '/final');
              },
            ),
          )
        ],
      ),
    );
  }
}