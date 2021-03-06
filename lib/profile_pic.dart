import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget{
  String pathImage;

  ProfilePic(this.pathImage);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 450,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
            fit:BoxFit.cover,
            image: AssetImage(
                pathImage
            )
        ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0,7.0)
            )
          ]
      ),
    );
  }

}