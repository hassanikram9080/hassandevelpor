import 'package:get/get.dart';

class CounterLogic extends GetxController {
  RxInt counter = 0.obs;
  void incrementCounter() {
    counter++;
  }
  void decrementCounter() {
    counter--;
  }
}



