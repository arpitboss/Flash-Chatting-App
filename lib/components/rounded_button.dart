import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';

class RoundedButton extends StatelessWidget {

  RoundedButton({this.colour, this.title, this.onTapped});

  final Color colour;
  final String title;
  final Function onTapped;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
           onTapped();
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
          ),
        ),
      ),
    );
  }
}