import 'package:flutter/material.dart';

class ExpandedButton extends StatelessWidget {
  ExpandedButton({required this.title, required this.color});
  final String title;
  final Color color;

  ButtonStyle style(Color color) {
    return ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 30),
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
        const SizedBox(width: 10),
        Expanded(
          child: ElevatedButton(
            style: style(color),
            onPressed: () {},
            child: Text(title),
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
