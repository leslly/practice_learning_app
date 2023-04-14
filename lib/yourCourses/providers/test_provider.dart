import 'package:flutter/material.dart';
import '../model/test_model.dart';

class   TestProvider extends ChangeNotifier {
  final test = [
   Test(
       testTitle: 'Tags For Headers',
       testDescription: "Let’s put your memory on this topic test. Solve tasks and check knowledge.",
       quiz: "Quiz 1",
       testImage: 'assets/blush_images/cool_plant.png',
   ),
    Test(
      testTitle: 'Main Tags',
      testDescription: "Let’s put your memory on this topic test. Solve tasks and check knowledge.",
      quiz: "Quiz 2",
      testImage: 'assets/blush_images/cool_plant.png',
    ),
    Test(
      testTitle: 'Style Tags',
      testDescription: "Let’s put your memory on this topic test. Solve tasks and check knowledge.",
      quiz: "Quiz 3",
      testImage: 'assets/blush_images/cool_plant.png',
    ),
  ];
  var index = 1;

  changeIndex(index){
    this.index = index;
    notifyListeners();
  }
}