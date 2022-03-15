import 'package:flutter_web_getx/DashboardBoss/DashboardBossModel.dart';

abstract class DashboardBossContract{
  onIndexSuccess(Map data);
  onIndexFailed(String message);
}