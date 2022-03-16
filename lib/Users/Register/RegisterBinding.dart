import 'package:flutter_web_getx/Users/Register/RegisterPresenter.dart';
import 'package:get/get.dart';

class RegisterBinding implements Bindings {
  @override
  dependencies() {
    // ignore: todo
    // TODO: implement state_controllers
    Get.put(RegisterPresenter());
  }
}