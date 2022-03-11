import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginStateController extends GetxController {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password =
      TextEditingController();

  GlobalKey<FormState> get formKey => _formKey;
  TextEditingController get email => _email;
  TextEditingController get password => _password;

  @override
  void onClose() {
    _email.dispose();
    _password.dispose();
    super.onClose();
  }
}
