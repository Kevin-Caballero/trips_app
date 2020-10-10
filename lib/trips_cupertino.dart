import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:trips_app/profile_trips.dart';
import 'package:trips_app/search_trips.dart';

import 'home_trips.dart';

class PlatziTripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
            backgroundColor: Colors.white.withAlpha(50), //Color desvanecido en CupertinoTabScaffold
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text("")
              ),
            ]
        ),

        // ignore: missing_return
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
          case 0:
          return CupertinoTabView(
            builder: (BuildContext context) => HomeTrips(),
          );
          break;
          // ignore: missing_return
          case 1:
          return CupertinoTabView(
            builder: (BuildContext context) => SearchTrips(),
          );
          break;
          case 2:
          return CupertinoTabView(
            builder: (BuildContext context) => ProfileTrips(),
          );
          break;
        }

          },
      ),
    );
  }
}