import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthMiddlware extends GetMiddleware {
  final storage = GetStorage();

  @override
  RouteSettings? redirect(String? route) {
    RouteSettings? routeSettings;
    bool isLogin =
        storage.read('isLogin') != null && storage.read('isLogin') == true;
    if (route == '/home') {
      if (!isLogin) {
        routeSettings = RouteSettings(name: '/login', arguments: null);
      } else {
        routeSettings = null;
      }
    } 
    // else if (route == '/login') {
    //   if (isLogin) {
    //     routeSettings = RouteSettings(name: "/login-warning", arguments: null);
    //   } else {
    //     routeSettings = null;
    //   }
    // }
    return routeSettings;
  }
}
