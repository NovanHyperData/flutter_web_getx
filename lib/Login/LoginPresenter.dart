import 'dart:convert';

import 'package:flutter_web_getx/Login/LoginContract.dart';
import 'package:flutter_web_getx/Login/LoginService.dart';
import 'package:flutter_web_getx/Login/LoginStateController.dart';
import 'package:flutter_web_getx/Users/UserModel.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginPresenter{

  LoginPresenter(this._contract);
  final _loginService = Get.put(LoginService());
  final _ctrl = Get.put(LoginStateController());
  late final LoginContract _contract;
  final storage = GetStorage();

  logout(){
    if (storage.read('auth')) {
      storage.erase();
    }
    Get.toNamed('/login');
  }

  login(String email, String password, bool rememberMe) async {
    if (_ctrl.rememberMe.isTrue) {
      storage.write('auth', {
        'email' : email,
        'password' : password,
        'rememberMe': rememberMe
      });
      try {
        Map loginResponse = await _loginService.login(email, password);
        // storage.write('isLogin', true);
        // storage.write('userData', loginResponse['data'].toMap());
        if (loginResponse['message'] == 'Login Success') {
          _contract.onLoginSuccess(User.fromJson(loginResponse['data']));
        } else {
          _contract.onLoginFailed('error');
        }
      } catch (err) {
        _contract.onLoginFailed(err.toString());
      }
    } else {
      
      try {
        storage.erase();
        Map loginResponse = await _loginService.login(email, password);
        // storage.write('isLogin', true);
        // storage.write('userData', loginResponse['data'].toMap());
        if (loginResponse['message'] == 'Login Success') {
          _contract.onLoginSuccess(User.fromJson(loginResponse['data']));
        } else {
          _contract.onLoginFailed('error');
        }
      } catch (err) {
        _contract.onLoginFailed(err.toString());
      }
    }
  }
}