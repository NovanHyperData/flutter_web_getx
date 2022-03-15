import 'dart:convert';

import 'package:get/get.dart';

class DashboardBossService extends GetConnect{
  Future index(String id) async {

    var url = "http://10.21.1.209/lumen/Lumen_API-Modern_Office/public/boss/" + id;
    
    var response = await get(url);
    print(response.body);
    return response.body;
  }
}