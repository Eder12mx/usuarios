import 'package:flutter/material.dart';
import 'package:isit_restaurantes_app/widgets/util/restaurants.dart';
import 'package:isit_restaurantes_app/widgets/gradient_back.dart';
import 'package:isit_restaurantes_app/widgets/trending_item.dart';

class Trending extends StatefulWidget {
  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  final TextEditingController _searchControl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0,0,10.0,0),
            child: ListView(
              children: <Widget>[
                Card(
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
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Color(0xFFD6D6D6)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFD6D6D6)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: "Buscar",
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xFF0D58A6),
                        ),
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          fontFamily: "Fira Sans",
                          color: Color(0xFF0D58A6),
                        ),
                      ),
                      maxLines: 1,
                      controller: _searchControl,
                    ),
                  ),
                ),


                SizedBox(height: 10.0),

                ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: restaurants == null ? 0 :restaurants.length,
                  itemBuilder: (BuildContext context, int index) {
                    Map restaurant = restaurants[index];

                    return GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/info');
                      },
                      child: TrendingItem(
                        img: restaurant["img"],
                        title: restaurant["title"],
                        address: restaurant["address"],
                        rating: restaurant["rating"],
                      ),
                    );
                  },
                ),

                SizedBox(height: 10.0),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
