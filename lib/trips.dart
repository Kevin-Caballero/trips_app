import 'package:flutter/material.dart';
import 'package:trips_app/Place/ui/screens/home_trips.dart';
import 'package:trips_app/Place/ui/screens/search_trips.dart';
import 'package:trips_app/User/ui/screens/profile_trips.dart';
import 'package:trips_app/trips_cupertino.dart';

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