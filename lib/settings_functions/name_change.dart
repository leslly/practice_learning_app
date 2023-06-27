
import 'package:flutter/material.dart';
import '../config/config.dart';
import '../utils/global_button.dart';
import '../utils/global_colours.dart';

class NameChange extends StatefulWidget {
  const NameChange({Key? key}) : super(key: key);

  @override
  State<NameChange> createState() => _NameChangeState();
}

class _NameChangeState extends State<NameChange> {



  final TextEditingController  _changeName = TextEditingController();
  final TextEditingController _currentName = TextEditingController();

  // var userName = [];
  //
  // void changeText() {
  //   setState(() {
  //     displayText = userName[Random().nextInt(userName.length)];
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    double maxHeight = MediaQuery.of(context).size.height - keyboardHeight;
    return Container(
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
                'Name Settings',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  color: GlobalColors.bigTextColorBlack
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Current Username',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  color: GlobalColors.bigTextColorBlack
                ),
              ),
               TextField(
                autofocus: true,
                controller: _currentName,
              ),
              const SizedBox(height: 15),
               Text(
                'New Username',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  color: GlobalColors.bigTextColorBlack
                ),
              ),
               TextField(
                autofocus: true,
                controller: _changeName,
              ),
              const SizedBox(height: 15),
               Text(
                'Confirm Username',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  color: GlobalColors.bigTextColorBlack
                ),
              ),
               TextField(
                autofocus: true,
                 controller: _changeName,
              ),
              const SizedBox(height: 15),
             ElevatedButton(
                 onPressed: () {
                   setState(() {
                     username = _changeName.text;
                   });
             },
                 child: Text(
               "Submit",
               style: TextStyle(
                 color: Colors.white,
                 fontFamily: 'assets/blush_images/Rubik/Rubik-Medium.ttf',
                 fontWeight: FontWeight.bold,
                 fontSize: 16
               ),
             )),
        Text("new name: ${_changeName.text}")
            ],
          ),
        ),
      ),
    );
  }
}
