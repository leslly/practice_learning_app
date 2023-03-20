import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_learning_app/profile_view.dart';
import 'package:practice_learning_app/utils/global_colours.dart';
import 'package:practice_learning_app/utils/social_buttons.dart';
import 'package:practice_learning_app/utils/text_form_global.dart';

import 'login_view.dart';
import 'utils/global_button.dart';

class SignUpView extends StatelessWidget {
   SignUpView({Key? key}) : super(key: key);

   final TextEditingController emailController = TextEditingController();
   final TextEditingController passwordController = TextEditingController();
   final TextEditingController nameController = TextEditingController();

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
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: GlobalColors.smallTextColorGrey,
                        ),
                      ),
                      child: const Icon(
                        CupertinoIcons.back
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/blush_images/illustration(4).png',
                    height: 253,
                    width: 343,
                    fit: BoxFit.contain,
                  ),
                  Text(
                    'Sign up',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Rubik-Medium.ttf',
                      fontWeight: FontWeight.bold,
                      color: GlobalColors.bigTextColorBlack,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Create your account',
                    style: TextStyle(
                      color: GlobalColors.smallTextColorGrey,
                      fontSize: 14,
                      fontFamily: 'Rubik-Regular',
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextFormGlobal( controller: nameController,
                    text: 'Name',
                    textInputType: TextInputType.text,
                    obscure: false,
                    icon: null,
                    radius: 12,
                    height: 53,
                    width: 343,
                  ),
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
                    icon: CupertinoIcons.eye_slash,
                    radius: 12,
                    height: 53,
                    width: 343,
                  ),
                  GlobalButton(
                      nextPage: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => ProfileView()));
                  },
                    text: "Sign up"
                  ),
                  const SizedBox(height: 15),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView() ));
                    },
                    child: Text(
                      'Log in',
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
