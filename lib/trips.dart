import 'package:flutter/material.dart';
import 'package:trips_app/trips_cupertino.dart';
import 'home_trips.dart';
import 'profile_trips.dart';
import 'search_trips.dart';

class PlatziTrips extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips>{
  int indexTap=0;
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: PlatziTripsCupertino(),
      ),
    );
  }

}