import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget{
  String profilePicturePath = "https://images.unsplash.com/photo-1599833090266-25962e47e901?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80";
  String name = "Aquiles Traigo";
  String email = "AquileT@gmail.com";

  ProfileInfo(this.profilePicturePath,this.name,this.email);

  @override
  Widget build(BuildContext context) {
    //USERNAME-----------------------------------------------------------------
    final userName = Container(
      margin: EdgeInsets.only(left: 20.0,top:180),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 23.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold,
            color: Colors.black),
      ),
    );

    final userEmail = Container(
      margin: EdgeInsets.only(left: 20.0, top:5),
      child: Text(
        email,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 15.0, fontFamily: "Lato"),
      ),
    );

    //USERDETAILS---------------------------------------------------------------
    final userDetails = Column(
      children: <Widget>[userName, userEmail],
    );

    //PHOTO--------------------------------------------------------------------
    final photo = Container(
      margin: EdgeInsets.only(left:80, top:150),
      width: 110.0,
      height: 110.0,
      padding: EdgeInsets.only(left: 5, top:5, right: 5, bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: Colors.white,
      ),
      child: CircleAvatar(
        backgroundImage: NetworkImage(profilePicturePath),
      ),
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[photo, userDetails],
    );
  }
}