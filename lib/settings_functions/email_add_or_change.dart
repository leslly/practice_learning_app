import 'package:flutter/material.dart';
import 'package:practice_learning_app/utils/global_button.dart';

import '../utils/global_colours.dart';

class EmailAddOrChange extends StatefulWidget {
  const EmailAddOrChange({Key? key}) : super(key: key);

  @override
  State<EmailAddOrChange> createState() => _EmailAddOrChangeState();
}

class _EmailAddOrChangeState extends State<EmailAddOrChange> {
  @override
  Widget build(BuildContext context) {
    double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    double maxHeight = MediaQuery.of(context).size.height - keyboardHeight;
    return Container(
      color: const Color(0xff757575),
      child: SingleChildScrollView(
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
                    'Email Settings',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: GlobalColors.bigTextColorBlack
                  ),
                ),
                const SizedBox(height: 30),
                 Text(
                  'Add Email',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    color: GlobalColors.bigTextColorBlack
                  ),
                ),
                const TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'example@google.com',
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'Change Email',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    color: GlobalColors.bigTextColorBlack,
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'example@google.com',
                  ),
                  autofocus: true,
                ),
                const SizedBox(height: 15),
                Text(
                  'Confirm Email',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    color: GlobalColors.bigTextColorBlack,
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'example@google.com',
                  ),
                  autofocus: true,
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
