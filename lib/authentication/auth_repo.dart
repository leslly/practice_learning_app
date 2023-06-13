import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:practice_learning_app/authentication/Exceptions/signup_email_password_failure.dart';
import 'package:practice_learning_app/bottom_nav_bar/home_screen_two.dart';
import 'package:practice_learning_app/course/index.dart';
import 'package:practice_learning_app/start_up/login_view.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReadt() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null ? Get.offAll(() => LoginView()) : Get.offAll(() => const HomePage());
    // If user exits and comes back to app and they are already logged in, redirect to home page
  }

  Future<void> createUserWithEmailAndPassword(String email, String password) async {

    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      // in the case that user has created an account successfully
      firebaseUser.value != null ? Get.offAll(() => const HomePage()) : Get.to(() => LoginView());
    } on FirebaseAuthException catch (e) {
      final exception = SignUpWithEmailAndPasswordFailure.code(e.code);
      print("FIREBASE AUTH EXCEPTION - ${exception.message}");
    } catch (_) {
      const exception = SignUpWithEmailAndPasswordFailure();
      print("EXCEPTION - ${exception.message}");
      throw exception;
    }
  }

  Future<void> loginUserWithEmailAndPassword(String email, String password) async {

    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {

    } catch (_) {

    }
  }

  Future<void> logout() async => await _auth.signOut();

}