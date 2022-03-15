import 'package:get/get.dart';

class UserService extends GetConnect{
  Future users() async {

    var url = "http://10.21.1.209/lumen/Lumen_API-Modern_Office/public/users";
    
    var response = await get(url);
    return response.body;
  }
}