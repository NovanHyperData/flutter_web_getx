import 'dart:convert';

import 'package:flutter_web_getx/DashboardBoss/DashboardBossContract.dart';
import 'package:flutter_web_getx/DashboardBoss/DashboardBossModel.dart';
import 'package:flutter_web_getx/DashboardBoss/DashboardBossService.dart';
import 'package:get/get.dart';

class DashboardBossPresenter extends GetxController {


  DashboardBossPresenter(this._contract);
  final _dbService = Get.put(DashboardBossService());
  late final DashboardBossContract _contract;

  index(String id) async {
    try {
      Map<String, dynamic> dbResponse = await _dbService.index(id);
      _contract.onIndexSuccess(dbResponse);
    } catch (err) {
      _contract.onIndexFailed(err.toString());
    }
  }
}