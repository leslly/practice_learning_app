import 'package:flutter/material.dart';
import 'package:practice_learning_app/utils/social_buttons.dart';
import 'package:practice_learning_app/utils/text_form_global.dart';

import 'utils/global_button.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            alignment: Alignment.center,
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/blush_images/login_view.jpg',
                    height: 253,
                    width: 343,
                    fit: BoxFit.contain,
                  ),
                  const Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Rubik-Medium.ttf',
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SocialLogins(),
                  SizedBox(height: 15),
                  TextFormGlobal( controller: emailController,
                  text: 'Email',
                  textInputType: TextInputType.emailAddress,
                    obscure: false,
                    icon: null,
                    radius: 12,
                    height: 53,
                    width: 343,
                  ),
                  SizedBox(height: 15),
                  TextFormGlobal( controller: passwordController,
                    text: 'Email',
                    textInputType: TextInputType.text,
                    obscure: true,
                    icon: null,
                    radius: 12,
                    height: 53,
                    width: 343,
                  ),
                  GlobalButton(nextPage: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => LoginView()));
                  }, text: "Let's Start"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
