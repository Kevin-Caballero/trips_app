import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{
  bool _pressed = false;
  void onPressedFav(){
    setState(() {
      _pressed = !this._pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xff11da53),
      mini:true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        this._pressed?Icons.favorite:Icons.favorite_border
      ),
    );
  }

}