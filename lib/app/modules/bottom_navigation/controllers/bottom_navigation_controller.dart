import 'package:get/get.dart';

class BottomNavigationController extends GetxController {

  var selectedIndex = 0.obs;

  void changeIndex(int index){
    selectedIndex.value = index;
  }
 //TODO: Implement BottomNavigationController

  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  // void increment() => count.value++;
}
