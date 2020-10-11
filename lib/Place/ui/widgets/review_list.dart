import 'package:flutter/material.dart';
import 'package:trips_app/Place/ui/widgets/review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("https://images.unsplash.com/photo-1599861901137-b2af5df97f02?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", "Susana Orio", "1 review 5 photo", 4, "Awesome place"),
        Review("https://images.unsplash.com/photo-1599833090266-25962e47e901?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80", "Aquiles Traigo", "2 review 2 photo", 3, "I love this Fcking place"),
        Review("https://images.unsplash.com/photo-1599875333769-b89b21ff5584?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80", "Miren Amiano", "1 review 14 photo", 4.5, "F for this place")
      ],
    );
  }

}