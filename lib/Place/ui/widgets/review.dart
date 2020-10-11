import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String profilePicturePath = "assets/img/kvn.jpg";
  String name = "Aquiles Traigo";
  String details = "1 review 5 photos";
  String comment = "There is an amazing place in Sri Lanka";
  double stars = 5;

  Review(this.profilePicturePath, this.name, this.details, this.stars,
      this.comment);

  //STARS----------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    Widget fullStarIconWidget() {
      return new Icon(
        Icons.star,
        color: Color(0XFFF2C611),
      );
    }

    Widget halfStarIconWidget() {
      return new Icon(
        Icons.star_half,
        color: Color(0XFFF2C611),
      );
    }

    Widget emptyStarIconWidget() {
      return new Icon(
        Icons.star_border,
        color: Color(0XFFF2C611),
      );
    }

    Widget validateStarIconWidget(double numberOfStars) {
      if (numberOfStars >= 1.0) {
        return fullStarIconWidget();
      }

      if (numberOfStars >= 0.5) {
        return halfStarIconWidget();
      }

      return emptyStarIconWidget();
    }

    Widget starWidget(double numberOfStars) {
      return new Container(
        //margin: EdgeInsets.only(top: 323.0, right: 3.0),
        child: validateStarIconWidget(numberOfStars),
      );
    }

    Widget starsWidget(double numberOfStars) {
      List<Widget> rowStars = [];
      for (int i = 1; i <= 5; i++) {
        rowStars.add(starWidget(numberOfStars));
        numberOfStars--;
      }

      return new Row(
        children: rowStars,
      );
    }

    //USERCOMMENT--------------------------------------------------------------
    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13.0, fontWeight: FontWeight.w900),
      ),
    );

    //USERINFO-----------------------------------------------------------------
    final userInfo = Container(
        margin: EdgeInsets.only(left: 20.0),
        child: Row(
          children: <Widget>[
            Text(
              details,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFa3a5a7)),
            ),
            starsWidget(stars)
          ],
        ));

    //USERNAME-----------------------------------------------------------------
    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 17.0, fontFamily: "Lato"),
      ),
    );

    //USERDETAILS---------------------------------------------------------------
    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    );

    //PHOTO--------------------------------------------------------------------
    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      child: CircleAvatar(
        backgroundImage: NetworkImage(profilePicturePath),
      ),
    );

    return Row(
      children: <Widget>[photo, userDetails],
    );
  }
}
