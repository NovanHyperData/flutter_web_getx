import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardEmployeeController extends GetxController {
  
  var tasks = 0.obs;
  var snacks = 0.obs;
  var drinks = 0.obs;
  var name = 'User'.obs;
  var photo = 'http://10.21.1.209/lumen/Lumen_API-Modern_Office/public/Assets/UsersPhoto/defaultuser.png'.obs;
  var email = 'user@gmail.com'.obs;


  // @override
  // void onClose() {
  //   _email.dispose();
  //   _password.dispose();
  //   super.onClose();
  // }
}
