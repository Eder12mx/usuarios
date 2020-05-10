import 'package:flutter/material.dart';

class ButtonPurple extends StatefulWidget {

  final String text;
  double left = 0.0;
  double top = 0.0;
  double width = 0.0;
  double height = 0.0;
  final VoidCallback onPressed;

  ButtonPurple({Key key, @required this.text, @required this.onPressed, this.height, this.width, this.left, this.top});

  @override
  State createState() {
    return _ButtonPurple();
  }
}

class _ButtonPurple extends State<ButtonPurple>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        margin: EdgeInsets.only(
            top: widget.top,
            left: widget.left
        ),
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32.0),
            gradient: LinearGradient(
                colors: [
                  Color (0xFF4268D3),
                  Color (0xFF0D58A6)
                ],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp

            )

        ),

        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
                fontSize: 18.0,
                fontFamily: "Fira Sans",
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),

          ),
        ),

      ),
    );
  }
}

