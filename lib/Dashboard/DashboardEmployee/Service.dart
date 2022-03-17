import 'package:get/get.dart';

class DashboardEmployeeService extends GetConnect{
  Future index(String id) async {

    var url = "http://10.21.1.209/lumen/Lumen_API-Modern_Office/public/employee/" + id;
    
    var response = await get(url);
    return response.body;
  }
  Future user(String id) async {

    var url = "http://10.21.1.209/lumen/Lumen_API-Modern_Office/public/users/"+id;
    var respond = await get(url);
    return respond.body;
  }
}