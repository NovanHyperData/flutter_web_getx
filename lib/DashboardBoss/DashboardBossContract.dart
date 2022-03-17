import 'package:flutter_web_getx/DashboardBoss/DashboardBossModel.dart';
import 'package:flutter_web_getx/Users/UserModel.dart';

abstract class DashboardBossContract{
  onIndexSuccess(Dashboard data);
  onIndexFailed(String message);
  onUserSuccess(User user);
  onUserFailed(String message);
}