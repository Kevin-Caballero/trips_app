import 'package:flutter/material.dart';
import 'package:trips_app/User/ui/widgets/profile_actions.dart';
import 'package:trips_app/User/ui/widgets/profile_info.dart';
import 'package:trips_app/User/ui/widgets/profile_pics_list.dart';
import 'package:trips_app/widgets/gradient_back.dart';

class ProfileTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBack("Profile",500.0),
        ProfileInfo("https://images.unsplash.com/photo-1599833090266-25962e47e901?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80", "Aquiles Traigo", "AquilesT@gmail.com"),
        ProfileActions(),
        ProfilePicsList()
      ],
    );
  }
  
}