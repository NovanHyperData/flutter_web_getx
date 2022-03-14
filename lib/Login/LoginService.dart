import 'dart:convert';

import 'package:flutter_web_getx/Users/UserModel.dart';
import 'package:get/get.dart';

class LoginService extends GetConnect{

  Future login(String email, String password) async {

    var body ={ "email": email, "password": password };
    var url = "http://10.21.1.209/lumen/Lumen_API-Modern_Office/public/login";
    
    var response = await post(url, body);
    return response.body;
  }

}