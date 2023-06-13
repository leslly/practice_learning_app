import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:practice_learning_app/authentication/auth_repo.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  // Textfield controllers to get data from textfield
  final email = TextEditingController();
  final name = TextEditingController();
  final password = TextEditingController();

  // call this function from design and it will do the rest
  void registerUser(String email, String password) {
    AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
  }
}