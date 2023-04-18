import 'package:flutter/material.dart';
import '../model/test_model.dart';

class   TestProvider extends ChangeNotifier {

  TestProvider () {
    map = {
      1: swiftTest,
      2: flutterTest,
      3: figmaTest,
      4: htmlTest,
    };
  }

  final swiftTest = [
   Test(
       testTitle: 'Swift test one',
       testDescription: "Let’s put your memory on this topic test. Solve tasks and check knowledge.",
       quiz: "Quiz 1",
       testImage: 'assets/blush_images/cool_plant.png',
        id: 1,

   ),
    Test(
      testTitle: 'Swift test two',
      testDescription: "Let’s put your memory on this topic test. Solve tasks and check knowledge.",
      quiz: "Quiz 2",
      testImage: 'assets/blush_images/cool_plant.png',
      id: 1,
    ),
    Test(
      testTitle: 'Swift test three',
      testDescription: "Let’s put your memory on this topic test. Solve tasks and check knowledge.",
      quiz: "Quiz 3",
      testImage: 'assets/blush_images/cool_plant.png',
      id: 1,
    ),
  ];

  final flutterTest = [
    Test(
      testTitle: 'Widgets',
      testDescription: "Let’s put your memory on this topic test. Solve tasks and check knowledge.",
      quiz: "Quiz 1",
      testImage: 'assets/blush_images/cool_plant.png',
      id: 2,
    ),
    Test(
      testTitle: 'Animations',
      testDescription: "Let’s put your memory on this topic test. Solve tasks and check knowledge.",
      quiz: "Quiz 2",
      testImage: 'assets/blush_images/cool_plant.png',
      id: 2,
    ),
    Test(
      testTitle: 'Material Icons',
      testDescription: "Let’s put your memory on this topic test. Solve tasks and check knowledge.",
      quiz: "Quiz 3",
      testImage: 'assets/blush_images/cool_plant.png',
      id: 2,
    ),
  ];

  final figmaTest = [
    Test(
      testTitle: 'Colors',
      testDescription: "Let’s put your memory on this topic test. Solve tasks and check knowledge.",
      quiz: "Quiz 1",
      testImage: 'assets/blush_images/cool_plant.png',
      id: 3,
    ),
    Test(
      testTitle: 'Componenets',
      testDescription: "Let’s put your memory on this topic test. Solve tasks and check knowledge.",
      quiz: "Quiz 2",
      testImage: 'assets/blush_images/cool_plant.png',
      id: 3,
    ),
    Test(
      testTitle: 'Frames',
      testDescription: "Let’s put your memory on this topic test. Solve tasks and check knowledge.",
      quiz: "Quiz 3",
      testImage: 'assets/blush_images/cool_plant.png',
      id: 3,
    ),
  ];

  final htmlTest = [
    Test(
      testTitle: 'Tags For Headers',
      testDescription: "Let’s put your memory on this topic test. Solve tasks and check knowledge.",
      quiz: "Quiz 1",
      testImage: 'assets/blush_images/cool_plant.png',
      id: 4,
    ),
    Test(
      testTitle: 'Main Tags',
      testDescription: "Let’s put your memory on this topic test. Solve tasks and check knowledge.",
      quiz: "Quiz 2",
      testImage: 'assets/blush_images/cool_plant.png',
      id: 4,
    ),
    Test(
      testTitle: 'Style Tags',
      testDescription: "Let’s put your memory on this topic test. Solve tasks and check knowledge.",
      quiz: "Quiz 3",
      testImage: 'assets/blush_images/cool_plant.png',
      id: 4,
    ),
  ];

  var index = 1;
  late Map<int, List<Test>> map;

  changeIndex(index){
    this.index = index;
    notifyListeners();
  }
}