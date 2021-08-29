import 'package:flutter/material.dart';

class ExpandedButton extends StatefulWidget {
  ExpandedButton({Key? key, required this.title, required this.color})
      : super(key: key);
  final String title;
  final Color color;

  @override
  _ExpandedButtonState createState() => _ExpandedButtonState();
}

class _ExpandedButtonState extends State<ExpandedButton> {
  ButtonStyle style(Color color) {
    return ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 30),
      padding: EdgeInsets.all(8),
      primary: widget.color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        // side: BorderSide(color: color),
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
            style: style(widget.color),
            onPressed: () {},
            child: Text(widget.title),
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
