import 'package:flutter_web_getx/Dashboard/DashboardEmployee/Contract.dart';
import 'package:flutter_web_getx/Dashboard/DashboardEmployee/Service.dart';
import 'package:flutter_web_getx/Dashboard/Model.dart';
import 'package:flutter_web_getx/Users/Model.dart';
import 'package:get/get.dart';

class DashboardEmployeePresenter extends GetxController {


  DashboardEmployeePresenter(this._contract);
  final _dbService = Get.put(DashboardEmployeeService());
  late final DashboardEmployeeContract _contract;

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