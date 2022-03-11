import 'dart:convert';

import 'package:flutter_web_getx/Login/LoginContract.dart';
import 'package:flutter_web_getx/Login/LoginService.dart';
import 'package:flutter_web_getx/Users/UserModel.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginPresenter {
  LoginPresenter(this._contract);
  final _loginService = Get.put(LoginService());
  late final LoginContract _contract;
  // final storage = GetStorage();

  login(String email, String password) async {
    try {
      User loginResponse = await _loginService.login(email, password);
      // storage.write('isLogin', true);
      // storage.write('userData', loginResponse['data'].toMap());
      _contract.onLoginSuccess(loginResponse);
    } catch (err) {
      _contract.onLoginFailed(err.toString());
    }
  }
}