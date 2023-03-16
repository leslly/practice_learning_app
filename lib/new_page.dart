import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(100.0),
      color: Colors.white,
      child: const Text(' A new Page',
      style: TextStyle(
        fontSize: 32,
      ),),
    );
  }
}
