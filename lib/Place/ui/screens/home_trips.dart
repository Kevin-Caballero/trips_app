import 'package:flutter/material.dart';
import 'package:trips_app/Place/ui/screens/header_appbar.dart';
import 'package:trips_app/Place/ui/widgets/description_place.dart';
import 'package:trips_app/Place/ui/widgets/review_list.dart';



class HomeTrips extends StatelessWidget{
  String dummyText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc in suscipit mi. Sed eu eros in augue iaculis ultricies. In fermentum dolor sed quam commodo, id tincidunt odio suscipit. Mauris vehicula neque eget vehicula pellentesque. Nam nec suscipit est. Donec nulla mauris, condimentum aliquam velit sed, dignissim semper erat. In vel lectus at sem bibendum tincidunt. Phasellus tempus interdum mollis. Aliquam eget tristique eros. Nunc tristique mollis metus a euismod. Aenean sagittis sodales tellus, eget sodales risus luctus iaculis.\n\n Praesent vitae sem ut arcu lacinia placerat. Cras egestas sapien dui, id mollis libero eleifend a. Integer sagittis sagittis pharetra. Praesent scelerisque molestie orci et scelerisque. Curabitur vel placerat sapien. Sed finibus vitae mi at semper. Quisque leo ligula, egestas at nisi id, placerat tincidunt enim. Ut ultrices, ante quis vulputate interdum, libero tortor vehicula arcu, nec viverra erat metus vel diam. Donec molestie, neque nec efficitur efficitur, neque mauris feugiat orci, nec rhoncus enim tellus at nunc. Proin placerat eleifend lacus sit amet mollis.";
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace("Bahamas", 3.5,
                dummyText),
            ReviewList()
          ],
        ),
        HeaderAppbar("Popular")
      ],
    );
  }

}