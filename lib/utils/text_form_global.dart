import 'package:flutter/material.dart';

import 'global_colours.dart';

class TextFormGlobal extends StatelessWidget {
   TextFormGlobal({Key? key,
    this.height = 55,
    this.icon,
    required this.controller,
    required this.text,
    required this.textInputType,
    required this.obscure,
    this.radius = 100,
    this.width = 339,
    this.autovalidatemode = AutovalidateMode.onUserInteraction,
    this.textinputaction = TextInputAction.done,
    this.validator,
  }) : super(key: key);

  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;
  final double radius;//radius
  final double width;//width
  final IconData? icon;
  final double height;
   var validator;
   var autovalidatemode;
   var textinputaction;


  @override
  Widget build(BuildContext context) {
    return Container( // this is the container for the email
      height: height,
      width: width,
      padding: const EdgeInsets.only(top: 3, left: 15, bottom: 0, right: 15),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: GlobalColors.borderGrey),
        color: GlobalColors.whiteTextColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: TextFormField(// the child inside the container holds the text field for the email
        controller: controller,
        keyboardType: textInputType,
        obscureText: obscure,
        // autofocus: true,
        validator: validator,
        textInputAction: textinputaction,
        autovalidateMode: autovalidatemode,
        decoration: InputDecoration(
          hintText: text,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(0),
          hintStyle: TextStyle(
            height: 1,
            color: GlobalColors.smallTextColorGrey,
          ),
          suffixIcon: icon != null ? Icon(icon, color: GlobalColors.bigTextColorBlack): null,
        ),
      ),
    );
  }
}
