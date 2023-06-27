import 'package:flutter/material.dart';
import '../utils/global_button.dart';
import '../utils/global_colours.dart';

class PasswordChange extends StatefulWidget {
  const PasswordChange({Key? key}) : super(key: key);

  @override
  State<PasswordChange> createState() => _PasswordChangeState();
}

class _PasswordChangeState extends State<PasswordChange> {
  @override
  Widget build(BuildContext context) {
    double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    double maxHeight = MediaQuery.of(context).size.height - keyboardHeight;
    return SingleChildScrollView(
      child: Container(
        color: const Color(0xff757575),
        child: Container(
          height: maxHeight,
          decoration: BoxDecoration(
            color: GlobalColors.buttonColorwhite,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                 Text(
                  'Password Settings',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    color: GlobalColors.bigTextColorBlack
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'Current Password',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    color: GlobalColors.bigTextColorBlack
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  autofocus: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'New Password',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    color: GlobalColors.bigTextColorBlack
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  autofocus: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'Confirm Password',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    color: GlobalColors.bigTextColorBlack
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  autofocus: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                  ),
                ),
                const SizedBox(height: 15),
                GlobalButton(
                    text: 'Submit',
                    colorOfText: GlobalColors.whiteTextColor,
                    colorOfButton: Colors.blueAccent,
                    nextPage: () {
                      Navigator.pop(context);
                    }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
