import 'package:flutter/material.dart';

class ExpandedButton extends StatelessWidget {
  ExpandedButton(
      {required this.title, required this.color, required this.handleOnClick});
  final String title;
  final Color color;
  final Function handleOnClick;

  ButtonStyle style(Color color) {
    return ElevatedButton.styleFrom(
      textStyle: TextStyle(fontSize: 30),
      padding: EdgeInsets.all(8),
      primary: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10),
        Expanded(
          child: ElevatedButton(
            style: style(color),
            onPressed: () => handleOnClick(),
            child: Text(title),
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
