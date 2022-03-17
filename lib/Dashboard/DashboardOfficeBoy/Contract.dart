import 'package:flutter_web_getx/Dashboard/Model.dart';
import 'package:flutter_web_getx/Users/Model.dart';

abstract class DashboardOfficeBoyContract{
  onIndexSuccess(Dashboard data);
  onIndexFailed(String message);
  onUserSuccess(User user);
  onUserFailed(String message);
}