import 'package:flutter/material.dart';
import 'gradient_back.dart';
import 'card_image_list.dart';

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