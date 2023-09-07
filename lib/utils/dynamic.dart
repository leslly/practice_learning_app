import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // 844 / height size
  static double height10 = screenHeight / 84.4;
  static double height80 = screenHeight / 10.5;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.13;
  static double height45 = screenHeight / 18.76;
  static double height733 = screenHeight / 1.14;
  static double height48 = screenHeight / 17.5;
  static double height24 = screenHeight / 35.0;

  // 844 / radius size
  static double radius15 = screenHeight / 56.27;
  static double radius20 = screenHeight / 42.2;

  // 844 / width size
  static double width10 = screenWidth  / 84.4;
  static double width15 = screenWidth  / 56.27;
  static double width20 = screenWidth  / 42.2;
  static double width48 = screenWidth /17.5;
  static double width24 = screenWidth  / 35.0;

  // 844 / font size
  static double font20 = screenHeight / 42.2;
  static double font16 = screenHeight / 52.75;
  static double font13 = screenHeight / 64.9;
  static double font14 = screenHeight / 60.28;

/* The screen height = Get.context - this calculates the height of any phone
 Standard screen height range from 440 to 1080
 we'll use 840
*  For the height of any screen size all the height lengths used in the code,
* is equal to the 840 divided by any of the heights used throughout the code
TO finalise how any of them will be dynamic commence with the calculation above when the answer is gotten*/
}