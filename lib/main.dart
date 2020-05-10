import 'package:flutter/material.dart';
import 'package:isit_restaurantes_app/ui/screens/all_restaurantes.dart';
import 'package:isit_restaurantes_app/ui/screens/category_screen.dart';
import 'package:isit_restaurantes_app/ui/screens/delivery_screen.dart';
import 'package:isit_restaurantes_app/ui/menu_screen.dart';
import 'package:isit_restaurantes_app/ui/screens/dishes_screen.dart';
import 'package:isit_restaurantes_app/ui/screens/filter_list.dart';
import 'package:isit_restaurantes_app/ui/screens/final_screen.dart';
import 'package:isit_restaurantes_app/ui/screens/payment_screen.dart';
import 'package:isit_restaurantes_app/ui/screens/profile_screen.dart';
import 'package:isit_restaurantes_app/ui/screens/restaurantes_info.dart';
import 'package:isit_restaurantes_app/ui/screens/revision_screen.dart';
import 'package:isit_restaurantes_app/ui/screens/selection_list.dart';
import 'package:isit_restaurantes_app/ui/screens/sign_in_screen.dart';
import 'package:isit_restaurantes_app/ui/screens/splash_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    initialRoute: SplashScreen.routeName,
    routes: <String, WidgetBuilder>{
      MenuScreen.routeName: (BuildContext context) => MenuScreen(),
      DeliveryScreen.routeName: (BuildContext context) => DeliveryScreen(),
      RevisionScreen.routeName: (BuildContext context) => RevisionScreen(),
      SelectionList.routeName: (BuildContext context) => SelectionList(),
      CategoryScreen.routeName: (BuildContext context) => CategoryScreen(),
      PaymentScreen.routeName: (BuildContext context) => PaymentScreen(),
      SignInScreen.routeName: (BuildContext context) => SignInScreen(),
      FinalScreen.routeName: (BuildContext context) => FinalScreen(),
      DishesScreen.routeName: (BuildContext context) => DishesScreen(),
      ProfileScreen.routeName: (BuildContext context) => ProfileScreen(),
      FilterList.routeName: (BuildContext context) => FilterList(),
      RestaurantesInfo.routeName: (BuildContext context) => RestaurantesInfo(),
      AllRestaurantes.routeName: (BuildContext context) => AllRestaurantes(),
    }
    );
  }
}



