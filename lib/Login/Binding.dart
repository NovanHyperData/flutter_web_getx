import 'package:flutter_web_getx/Login/StateController.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  dependencies() {
    // ignore: todo
    // TODO: implement state_controllers
    Get.put(LoginStateController());
  }
}