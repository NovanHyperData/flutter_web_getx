import 'package:flutter_web_getx/Dashboard/DashboardOfficeBoy/Contract.dart';
import 'package:flutter_web_getx/Dashboard/DashboardOfficeBoy/Service.dart';
import 'package:flutter_web_getx/Dashboard/Model.dart';
import 'package:flutter_web_getx/Users/Model.dart';
import 'package:get/get.dart';

class DashboardOfficeBoyPresenter extends GetxController {


  DashboardOfficeBoyPresenter(this._contract);
  final _dbService = Get.put(DashboardOfficeBoyService());
  late final DashboardOfficeBoyContract _contract;

  index(String id) async {
    try {
      Map<String, dynamic> dbResponse = await _dbService.index(id);
      _contract.onIndexSuccess(Dashboard.fromJson(dbResponse));
    } catch (err) {
      _contract.onIndexFailed(err.toString());
    }
  }

  user(String id) async {
    try {
      Map<String, dynamic> dbResponse = await _dbService.user(id);
      _contract.onUserSuccess(User.fromJson(dbResponse['data']));
    } catch (err) {
      _contract.onUserFailed(err.toString());
    }
  }
}