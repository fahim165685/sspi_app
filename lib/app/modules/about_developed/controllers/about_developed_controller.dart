import 'package:get/get.dart';

class AboutDevelopedController extends GetxController {
  //TODO: Implement AboutDevelopedController
  //int currentItem=0;
  var  currentItem =0.obs;

  void selIndex({required int value}){
    currentItem.value = value;
  }

}
