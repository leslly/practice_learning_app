import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {

  bool _colorOfCircle = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _colorOfCircle = !_colorOfCircle;
        });
      },
      child: Container(
        alignment: Alignment.center,
        height: 150,
        width: 150,
        decoration:  BoxDecoration(
          shape: BoxShape.circle,
          color: _colorOfCircle ? Colors.blueAccent : Colors.redAccent,
        ),
      ),
    );
  }
}
