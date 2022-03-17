import 'package:flutter_web_getx/Users/Model.dart';

abstract class LoginContract {
  onLoginSuccess(User data);
  onLoginFailed(String message);
}