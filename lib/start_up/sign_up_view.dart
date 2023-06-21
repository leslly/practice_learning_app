import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:practice_learning_app/controllers/sign_up_controller.dart';
import 'package:practice_learning_app/course/index.dart';
import 'package:practice_learning_app/utils/global_colours.dart';
import 'package:practice_learning_app/utils/text_form_global.dart';
import 'login_view.dart';
import '../utils/global_button.dart';

class SignUpView extends StatelessWidget {
   SignUpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body:SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              padding: const EdgeInsets.only(top: 58, right: 16,left: 16,bottom: 0),
              child: Center(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView()));
                        },
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: GlobalColors.borderGrey,
                              ),
                            ),
                            child: const Icon(
                              CupertinoIcons.back
                            ),
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/blush_images/sign_up.png',
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
                      const SizedBox(height: 16),
                      Text(
                        'Create your account',
                        style: TextStyle(
                          color: GlobalColors.smallTextColorGrey,
                          fontSize: 14,
                          fontFamily: 'Rubik-Regular',
                        ),
                      ),
                      // NAME CONTROLLER
                      const SizedBox(height: 16),
                      TextFormGlobal(
                        controller: controller.name,
                        text: 'Name',
                        textInputType: TextInputType.text,
                        obscure: false,
                        icon: null,
                        radius: 12,
                        height: 53,
                        width: 343,
                      ),
                      // EMAIL CONTROLLER
                      const SizedBox(height: 16),
                      TextFormGlobal(
                        controller: controller.email,
                        text: 'Email',
                        textInputType: TextInputType.emailAddress,
                        obscure: false,
                        icon: null,
                        radius: 12,
                        height: 53,
                        width: 343,
                      ),
                      // PASSWORD CONTROLLER
                      const SizedBox(height: 16),
                      TextFormGlobal(
                        controller: controller.password,
                        text: 'Password',
                        textInputType: TextInputType.text,
                        obscure: true,
                        icon: CupertinoIcons.eye_slash,
                        radius: 12,
                        height: 53,
                        width: 343,
                      ),
                      const SizedBox(height: 16),
                      GlobalButton(
                          nextPage: () {
                       if(_formKey.currentState!.validate()){
                         SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                         // Actually signs up but does not re route to home page
                       }
                      },
                        text: "Sign up",
                        colorOfText: GlobalColors.whiteTextColor,
                        colorOfButton: GlobalColors.buttonColorOrange,
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
        ),
      ),
    );
  }
}
