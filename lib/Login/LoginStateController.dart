import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginStateController extends GetxController {

  logout(){
    _email.text = '';
    _password.text = '';
    rememberMe.value = false;
    Get.toNamed('/login');
  }

  var hidden = true.obs;
  var rememberMe = false.obs;
  late GlobalKey<FormState> _formKey;
  late TextEditingController _email;
  late TextEditingController _password;

  get formKey => _formKey;
  get email => _email;
  get password => _password;

  @override
  void onInit() {
    super.onInit();
    // TODO: implement onInit
    _formKey = GlobalKey<FormState>();
    _email = TextEditingController();
    _password = TextEditingController();
    final box = GetStorage();
      if (box.read("auth") != null) {
      final data = box.read("auth") as Map<String, dynamic>;
      _email.text = data["email"];
      _password.text = data["password"];
      rememberMe.value = data["rememberMe"];
      }
  }

  @override
  void onClose() {
    _email.dispose();
    _password.dispose();
    super.onClose();
  }
}
