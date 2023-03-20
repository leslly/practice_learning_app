import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_learning_app/profile_view.dart';
import 'package:practice_learning_app/sign_up_view.dart';
import 'package:practice_learning_app/utils/global_colours.dart';
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
                  Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Rubik-Medium.ttf',
                      fontWeight: FontWeight.bold,
                      color: GlobalColors.bigTextColorBlack,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const SocialLogins(),
                  const SizedBox(height: 15),
                  TextFormGlobal( controller: emailController,
                  text: 'Email',
                  textInputType: TextInputType.emailAddress,
                    obscure: false,
                    icon: null,
                    radius: 12,
                    height: 53,
                    width: 343,
                  ),
                  const SizedBox(height: 15),
                  TextFormGlobal( controller: passwordController,
                    text: 'Password',
                    textInputType: TextInputType.text,
                    obscure: true,
                    icon: CupertinoIcons.eye,
                    radius: 12,
                    height: 53,
                    width: 343,
                  ),
                  GlobalButton(
                      nextPage: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => ProfileView() ));
                    },
                    text: "Log in"
                  ),
                  const SizedBox(height: 15),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpView() ));
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Rubik-Medium.ttf',
                        color: GlobalColors.smallTextColorGrey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
