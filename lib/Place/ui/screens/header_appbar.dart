import 'package:flutter/material.dart';
import 'package:trips_app/Place/ui/widgets/card_image_list.dart';
import 'package:trips_app/widgets/gradient_back.dart';


class HeaderAppbar extends StatelessWidget{
  String title = "Popular";

  HeaderAppbar(this.title);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBack(title,250.0),
        CardImageList()
      ],
    );
  }

}