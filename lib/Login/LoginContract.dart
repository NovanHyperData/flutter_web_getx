import 'package:flutter_web_getx/Users/UserModel.dart';

abstract class LoginContract {
  onLoginSuccess(User data);
  onLoginFailed(String message);
}