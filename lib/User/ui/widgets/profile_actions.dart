import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileActions extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ProfileActions();
  }
}

class _ProfileActions extends State<ProfileActions>{


  @override
  Widget build(BuildContext context) {

    Widget bigFloatingButton() {
      return SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
      );
    }

      Widget miniFloatingButton(IconData icon) {
        return FloatingActionButton(
          mini: true, child: Icon(
          icon,
          color: Colors.black,
        ),
          backgroundColor: Colors.white, onPressed: () {  },
        );
      }

      return Container(
        alignment: Alignment(0.0,-0.4),
        margin: EdgeInsets.only(bottom: 10),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            miniFloatingButton(Icons.turned_in_not),
            SizedBox(width: 10),
            miniFloatingButton(Icons.laptop_mac),
            SizedBox(width: 10),
            bigFloatingButton(),
            SizedBox(width: 10),
            miniFloatingButton(Icons.email),
            SizedBox(width: 10),
            miniFloatingButton(Icons.person)
          ],
        ),
      );
    }
  }
  
