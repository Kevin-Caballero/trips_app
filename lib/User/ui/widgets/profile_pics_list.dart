import 'package:flutter/material.dart';
import 'profile_pic.dart';

class ProfilePicsList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 370),
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.vertical,
        children: [
            ProfilePic("assets/img/beach.jpeg"),
            ProfilePic("assets/img/mountain.jpeg"),
            ProfilePic("assets/img/mountain_stars.jpeg")
        ],
      ),
    );
  }

}