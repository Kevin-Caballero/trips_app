import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget{
  String title = "Popular";
  Color startColor = Color(0xFF345eeb);
  Color endColor = Color(0xFF34e5eb);
  double height = 250;


  GradientBack(this.title, this.height);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            startColor,
            endColor
          ],
          begin: FractionalOffset(0.2,0.0),
          end: FractionalOffset(1.0,0.6),
          stops: [0.0,0.6],
          tileMode: TileMode.clamp
        )
      ),

      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold
        ),
      ),
      alignment: Alignment(-0.9,-0.6),
    );
  }

}