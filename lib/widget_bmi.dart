import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bmical.dart';

class iconContext extends StatelessWidget {
  final IconData icondata;
  final String icontext;
  iconContext({this.icondata, this.icontext});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.mars,
          size: 80.0,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          icontext,
          style: TextStyle(fontSize: 18.0, color: Colors.white),
        ),
      ],
    );
  }
}

class containerbox extends StatelessWidget {
  containerbox({this.colour, this.childwidget, this.onPress});
  final Color colour;
  final Widget childwidget;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: childwidget,
        margin: EdgeInsets.all(10.0),
      ),
    );
  }
}
