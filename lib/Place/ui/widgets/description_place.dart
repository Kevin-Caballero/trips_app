import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trips_app/widgets/button_inkwell.dart';

class DescriptionPlace extends StatelessWidget{

  String namePlace;
  double stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {

    final description = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        right: 20.0,
        left: 20.0
      ),
      child: Text(
        descriptionPlace,
        style: TextStyle(
            fontFamily: "Lato",
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575A)
        ),
      ),
    );

    Widget fullStarIconWidget(){
      return new Icon(
        Icons.star,
        color: Color(0XFFF2C611),
      );
    }

    Widget halfStarIconWidget(){
      return new Icon(
        Icons.star_half,
        color: Color(0XFFF2C611),
      );
    }

    Widget emptyStarIconWidget(){
      return new Icon(
        Icons.star_border,
        color: Color(0XFFF2C611),
      );
    }

    Widget validateStarIconWidget(double numberOfStars){
      if(numberOfStars >= 1.0){
        return fullStarIconWidget();
      }

      if(numberOfStars >= 0.5){
        return halfStarIconWidget();
      }

      return emptyStarIconWidget();
    }

    Widget starWidget(double numberOfStars){
      return new Container(
        margin: EdgeInsets.only(
            top: 360.0,
            right: 3.0
        ),
        child: validateStarIconWidget(numberOfStars),
      );
    }

    Widget starsWidget(double numberOfStars){
      List<Widget> rowStars = [];
      for(int i=1; i<=5; i++){
        rowStars.add(starWidget(numberOfStars));
        numberOfStars--;
      }

      return new Row(
        children: rowStars,
      );
    }


    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 360,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [
            starsWidget(stars),
          ]
        )
      ],
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        title_stars,
        description,
        ButtonInkwell("Navigate")
      ],
    );
  }
  
}