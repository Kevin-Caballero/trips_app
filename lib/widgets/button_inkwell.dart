import 'package:flutter/material.dart';

class ButtonInkwell extends StatelessWidget{
  String buttonText = "Navigate";

  ButtonInkwell(this.buttonText);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Navegando"),
            )
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0,
          bottom: 30.0
        ),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            colors: [
              Color(0xFF345eeb),
              Color(0xFF34e5eb)
            ],
            begin: FractionalOffset(0.2,0.0),
            end: FractionalOffset(1.0,0.8),
            stops: [0.0,0.8],
            tileMode: TileMode.clamp
          )
        ),
        child: Center(
          child: Text(
              buttonText,
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: "Lato",
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }

}