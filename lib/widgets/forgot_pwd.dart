import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/sign_up_controller.dart';
import '../utils/global_colours.dart';
import '../utils/text_form_global.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);
  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  final controller = Get.put(SignUpController());
  final formKey = GlobalKey<FormState>();

  @override

  void dispose() {
    controller.email.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: CupertinoColors.white,
        image: DecorationImage(
          image: AssetImage(
            "assets/blush_images/illustration.png"
          ),
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
         appBar: AppBar(

          centerTitle: true,
          title: Text(
          'Forgot Password',
          style: TextStyle(
          color: GlobalColors.bigTextColorBlack,
          fontSize: 24,
          fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium',
          fontWeight: FontWeight.bold,
          ),
          ),
          backgroundColor: GlobalColors.buttonColorwhite,
          elevation: 0,
          ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    const Text(
                      'Receive an email to reset your password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Rubik-Medium.ttf',
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                      ),
                    ),
                    const SizedBox(height: 350),
                    TextFormGlobal(
                      controller: controller.email,
                      text: 'Email',
                      textInputType: TextInputType.emailAddress,
                      obscure: false,
                      icon: null,
                      radius: 12,
                      height: 53,
                      width: 343,
                      autovalidatemode: AutovalidateMode.onUserInteraction,
                      validator: (email) => email != null && !EmailValidator.validate(email) ? 'Enter a valid email' : null,
                      textinputaction: TextInputAction.done,
                    ),
                    const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    resetPwd();
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    alignment: Alignment.center,
                    height: 56,
                    width: 311,
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: GlobalColors.buttonColorOrange,
                      border: Border.all(width: 1, color: GlobalColors.borderGrey),
                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.email_outlined, color: Colors.white,),
                        const SizedBox(width: 20),
                        Text(
                          "Reset Password",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'assets/blush_images/Rubik/Rubik-Medium.ttf',
                            fontWeight: FontWeight.bold,
                            color: GlobalColors.whiteTextColor,
                          ),
                        ),
                      ],
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
    );
  }

  Future resetPwd() async {

    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );

    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: controller.email.text.trim());
      // Something is wrong over here cause we've been using auth repo since
      // Utils.showSnackBar('Password reset Email sent');

      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Email sent!')));
      Navigator.of(context).pop();
    } on FirebaseAuthException catch (e) {
      print(e);


      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.message.toString())));
      Navigator.of(context).popUntil((route) => route.isFirst);
    }

    // Navigator of context not working - only the navigator key will work here, but why ?
    // navigatorKey.currentState!.popUntil((route) => route.isFirst);

  }
}
