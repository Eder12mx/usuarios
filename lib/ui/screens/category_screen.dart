import 'package:flutter/material.dart';
import 'package:isit_restaurantes_app/ui/screens/dishes_screen.dart';
import 'package:isit_restaurantes_app/ui/screens/trendings.dart';
import 'package:isit_restaurantes_app/widgets/util/categories.dart';
import 'package:isit_restaurantes_app/widgets/util/restaurants.dart';
import 'package:isit_restaurantes_app/widgets/gradient_back.dart';
import 'package:isit_restaurantes_app/widgets/slide_item.dart';


class CategoryScreen extends StatefulWidget {
  static const String routeName = '/category';
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final TextEditingController _searchControl = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(),
          PreferredSize(
            child: Padding(
              padding: EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
              child: Card(
                elevation: 6.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFD6D6D6),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: "Fira Sans",
                      color: Color(0xFF0D58A6),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(color: Color(0xFFD6D6D6)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFD6D6D6)),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      hintText: "Buscar",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xFF0D58A6),
                      ),
                      hintStyle: TextStyle(
                        fontSize: 15.0,
                        color: Color(0xFF0D58A6),
                      ),
                    ),
                    maxLines: 1,
                    controller: _searchControl,
                  ),
                ),
              ),
            ),
            preferredSize: Size(
              MediaQuery.of(context).size.width,
              60.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0,48,10.0,0),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 20.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Restaurantes",
                      style: TextStyle(
                        fontSize: 23,
                        fontFamily: "Fira Sans",
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),

                    FlatButton(
                      child: Text(
                        "Ver todo...",
                        style: TextStyle(
                          fontFamily: "Fira Sans",
//                      fontSize: 22,
//                      fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context){
                              return Trending();
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),

                SizedBox(height: 10.0),

                //Horizontal List here
                Container(
                  height: MediaQuery.of(context).size.height/2.4,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: restaurants == null ? 0 :restaurants.length,
                    itemBuilder: (BuildContext context, int index) {
                      Map restaurant = restaurants[index];

                      return Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: SlideItem(
                          img: restaurant["img"],
                          title: restaurant["title"],
                          address: restaurant["address"],
                          rating: restaurant["rating"],
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(height: 10.0),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Categorías",
                      style: TextStyle(
                        fontSize: 23,
                        fontFamily: "Fira Sans",
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),

                    FlatButton(
                      child: Text(
                        "Ver todo...",
                        style: TextStyle(
                          fontFamily: "Fira Sans",
//                      fontSize: 22,
//                      fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: (){
                    Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (BuildContext context){
                          return DishesScreen();
                        },
                      ),
                    );
                      },
                    ),
                  ],
                ),

                SizedBox(height: 10.0),

                //Horizontal List here
                Container(
                  height: MediaQuery.of(context).size.height/6,
                  child: ListView.builder(
                    primary: false,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: categories == null ? 0:categories.length,
                    itemBuilder: (BuildContext context, int index) {
                      Map cat = categories[index];

                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/all');
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Stack(
                              children: <Widget>[
                                Image.asset(
                                  cat["img"],
                                  height: MediaQuery.of(context).size.height/6,
                                  width: MediaQuery.of(context).size.height/6,
                                  fit: BoxFit.cover,
                                ),

                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      // Add one stop for each color. Stops should increase from 0 to 1
                                      stops: [0.2, 0.7],
                                      colors: [
                                        cat['color1'],
                                        cat['color2'],
                                      ],
                                      // stops: [0.0, 0.1],
                                    ),
                                  ),
                                  height: MediaQuery.of(context).size.height/6,
                                  width: MediaQuery.of(context).size.height/6,
                                ),


                                Center(

                                  child: Container(
                                    height: MediaQuery.of(context).size.height/6,
                                    width: MediaQuery.of(context).size.height/6,
                                    padding: EdgeInsets.all(1),
                                    constraints: BoxConstraints(
                                      minWidth: 20,
                                      minHeight: 20,
                                    ),
                                    child: Center(
                                      child: Text(
                                        cat["name"],
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: "Fira Sans",
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
